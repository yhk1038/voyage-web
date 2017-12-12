
$(document).ready(function () {
    /*
     * Background settings
     */

    // thumbnail Image
    $('#article-input-thumb_img').on("change", function () {
        var file_input = $('#article-input-thumb_img');
        if (file_input.val() === "") {
            return
        } else {
            var file_value = file_input[0].files[0];
            var temp_url = URL.createObjectURL(file_value);
            $('#vod_1').attr('poster', temp_url);

            $('section.short_header').removeClass('short_header');
            header_resizing();
        }
    });

    // background Video
    $('#article-input-bg_vod').on("change", function () {
        var file_input = $('#article-input-bg_vod');
        if (file_input.val() === "") {
            return
        } else {
            var file_value = file_input[0].files[0];
            var temp_url = URL.createObjectURL(file_value);
            $('#vod_1 source').attr('src', temp_url);
        }
    });
});



/*
 * Contents Editor
 */

$(document).ready(function () {
    editor_rebind();

    /*
     * Control Section forms
     */

    // Add new section
    $('#add-section').click(function () {
        var section_index = parseInt($(this).find('#num').text());
        var i = section_index + 1;

        $('section').append('' +
            '<div class="article-section">\n' +
            '    <div class="container">\n' +
            '        <div class="row font-1">\n' +
            '            <input class="section_title t-family1" name="section['+i+'][title]" placeholder="문단의 제목 입니다" style="border: none;">\n' +
            '\n' +
            '            <textarea name="section['+i+'][content]" id="section-content-'+i+'" class="section-textarea real" style="display: none;"></textarea>\n' +
            '            <div data-row="'+i+'" class="html-editor-airmod note-air-editor note-editable panel-body article-section-textarea-content" contenteditable="true" id="note-editor-'+i+'">\n' +
            '                <div><p>본문을 입력해주세요</p></div>\n' +
            '            </div>\n' +
            '        </div>\n' +
            '    </div>\n' +
            '</div>' +
            '');
        editor_rebind();
    });
});

$(document).scroll(function () {
    var toolbox = new ToolBox();
    toolbox.hide();
});



/*
 *      Re-Binding
 */



// binding functions
function editor_rebind(){
    editor_mousedown();
    editor_keydown();
    editor_keyup();
}

// additional condition for hiding toolbox
function editor_mousedown(){
    $('.note-air-editor').unbind().mousedown(function (e) {
        var row_id = $(this).data('row');
        var editor = new Editor(row_id);

        editor.toolbox.html.fadeOut(editor.toolbox.fade_speed);
    });
}

// prevent removing default p tag
function editor_keydown(){
    $('.note-air-editor').unbind().keydown(function (e) {
        var row_id = $(this).data('row');
        var editor = new Editor(row_id);

        if (e.keyCode === 8){ // 8 : BackSpace
            console.log('back space pressed!');
            if (editor.check_empty_state()){
                e.stopPropagation();
                return false
            }
        }
    });
}

// bind ESC func (Toolbox) & Translator (Editor)
function editor_keyup(){
    $('.note-air-editor').unbind().keyup(function (e) {
        var row_id = $(this).data('row');
        var editor = new Editor(row_id);
        var toolbox = editor.toolbox;

        if (e.keyCode === 27){ // 27 : ESC key
            console.log('esc pressed!');
            toolbox.toggle();
            e.stopPropagation();
            return false
        }
        else {
            toolbox.html.fadeOut(toolbox.fade_speed);
        }

        editor.translate();
    });
}



/*
 *      Class
 */



// class Editor()
Editor = function (row_id) {
    this.id     = row_id;
    this.from   = $('#note-editor-'+row_id);
    this.to     = $('#section-content-'+row_id);

    this.original_text = this.from.html();
    this.markdown_text = '';

    this.toolbox = new ToolBox();

    var toolbox = this.toolbox;
    toolbox.html.find('a').unbind().click(function () {
        var to = $(this).data('to');
        if (to === 'normal'){
            toolbox.to_normal()
        } else if (to === 'quote'){
            toolbox.to_quote()
        }

    });

    this.translate = function () {
        var editor = this;
        var str = editor.original_text.replace(/<div>/g,'').replace(/<\/p>/g, '</p>:>').trim();

        // console.log(str);
        var splits = str.split('</div>')[0].split(':>');

        console.log(splits);
        var splits2 = [];
        $.each(splits, function (i, str) {
            var result = '';

            str = str.trim();
            // map </end:>
            if (editor.check_normal_line(str)){
                result = str
                    .replace(/<p>/,'')
                    .replace(/<p class="">/,'')
                    .replace(/<p class>/,'')
                    .replace(/<\/p>/,'</end:>');

            }
            else if (editor.check_quote_line(str)){
                result = str
                    .replace(/<p class="quote">/, '<quote>')
                    .replace(/<\/p>/,'</quote:>');

            } else {
                // console.log('sth: ', str.length);
                result = str;
            }

            if (str.length !== 0){
                splits2.push(result);
            }

        });

        editor.markdown_text = splits2.join('');
        editor.to.val(editor.markdown_text);
        console.log('val: ', editor.to.val());
    };

    this.check_empty_state = function () {
        var editor = this;
        var is_empty = false;
        var str = editor.original_text.replace(/<div>/g,'').replace(/<\/p>/g, '</p>:>').trim();
        var line = str.split('</div>')[0].split(':>').join('');
        if (line.replace(/ class=".*"/,'') === '<p><br></p>'){
            is_empty = true
        }
        console.log(is_empty);
        return is_empty
    };

    this.check_normal_line = function (str) {
        var is_normal = false;
        if (str.includes('<p>') || str.includes('<p class="">') || str.includes('<p class>')){
            is_normal = true
        }
        return is_normal
    };

    this.check_quote_line = function (str) {
        var is_quote = false;
        if (str.includes('quote')){
            is_quote = true
        }
        return is_quote
    };
};

ToolBox = function() {
    this.html = $('#editor-toolbox');
    this.fade_speed = 150;
    this.current_element = null;

    this.toggle = function () {
        this.current_element = window.getSelection().getRangeAt(0).commonAncestorContainer.parentElement;

        var rect_now     = this.current_element.getBoundingClientRect();
        var rect_toolbox = this.html[0].getBoundingClientRect();

        // rect_toolbox.width = 160  ## 156.468 ...
        this.html.css('left', rect_now.x - (160 + 35)).css('top', rect_now.top -5);
        this.html.fadeToggle(this.fade_speed);
    };

    this.hide = function () {
        this.html.hide()
    };



    /*
     * to mark
     */

    this.to_normal = function () {  // <p>TEXT</p> => <p>TEXT</end:></p>
        var el = this.current_element;
        if (el){
            $(el).removeClass('quote');
        }
    };

    this.to_quote = function () {  // <p>TEXT</p> => <p class="quote">TEXT</p>
        var el = this.current_element;
        if (el){
            $(el).addClass('quote');
        }
    };

};