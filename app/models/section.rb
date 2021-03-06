class Section < ApplicationRecord
    belongs_to :article
    # has_many :s_configs

    def coh
        content =   '<p>집 앞 백사장이 사라지면서 버려진 주택도 있다. 경북 경주시 감포읍 나정항 바닷가에는 80여㎡ 크기의 민박집 한 채와 낡은 주택 하나가 위태롭게 서있다. 민박집 주인 이모(81) 할머니는 시름이 깊다.</p>'+
                    '<div class="mini vod_container right-side">'+
                        '<video id="vod_2" class="section_video scrollPlay big_photo height_set" controls="" preload="true" poster="http://images.joins.com/newsroom/eastsea/thumb/1_3.jpg">'+
                            '<source src="http://cf.c.ooyala.com/t5bGxvYjE6pCV4Ok4CLc9vimXCzmIEAB/DOcJ-FxaFrRg4gtDEwOjFyazowODE7G_">'+
                        '</video>'+
                        '<span class="under_text">*경주 감포읍 나정리의 해안선 변화 [자료 경상북도]</span>'+
                    '</div>'+
                    '<div class="quote_wrap">'+
                        '<div class="quote_mark"></div>'+
                        '<p class="quote">바다가 자꾸 뭍으로 들어와 백사장을 다 가꼬가부렸심더. 민박집 손님도 다 쫓아내고 내 집까지 빼앗아갈라고 카네예. 해녀 탈의실도 보이소. 걱정 아입니꺼...</p>'+
                    '</div>'+
                    '<p>민박집·해녀 탈의실에서 바다까지 거리는 채 1m도 되지 않는다. 대문을 나서면 바로 바다인 셈이다. 파도가 심한 날이면 바닷물이 민박집 앞으로 튀어 오른다.</p>'+
                    '<div class="quote_wrap">'+
                        '<div class="quote_mark"></div>'+
                        '<p class="quote">10년 전까지만 해도 100 걸음은 걸어 나갈 수 있는 백사장이 있었어예. 그랬는데 매년 백사장이 줄어들더니 저렇게 집하고 바다가 딱 붙어버렸다 아입니꺼. 황당합니더.</p>'+
                    '</div>'+
                    '<p>이씨는 최근 3년간 10번 넘게 자갈을 사다가 집 담과 바다 사이에 퍼부었다. 바다가 집으로 곧 들이닥칠 것만 같아서다. 그는 "집이 곧 잠겨버릴 것만 같았다"고 당시를 회상했다.</p>'+
                    '<p>길 건너 슈퍼마켓 주인도 불안하긴 마찬가지다. 파도가 높게 이는 날엔 바닷물이 2차선 도로를 넘어 가게 문 앞까지 튀기 때문이다. 경상북도가 앞 바다에 수중 방파제(잠제·이안제) 300여개를 설치했지만 별 도움이 안 됐다. 방파제 일부는 벌써 물에 잠겼다.</p>'

        content
    end

    def c1h
        '경북 경주와 울산 접경의 경주시 양남면 하서리. 마을 주민 김미선(64)씨가 개 2마리와 함께 몽돌해변을 걷는다. 매일 새벽 6시에 일어나 집 앞 해변을 산책한게 벌써 37년째다.</end:>'+
        '그새 이 마을 해변 풍경은 몰라보게 달라졌다. 옛날에는 하서해수욕장이라 불렸다. 2㎞ 떨어진 수렴리 인근까지 그림 같은 백사장이 펼쳐져 있었다. 산책을 할 때면 개들이 모래 위를 신나게 뛰어다녔다. 여름에는 외지 사람들이 찾아와 해변에 돗자리를 깔고 놀았다. 하지만 지금 백사장은 간 데 없고 방파제 쌓을 때 쓰는 테트라포드가 그 자리를 대신 차지하고 있다. 하서해수욕장이란 이름 자체가 사라졌다.</end:>'+
        '<quote>태풍이 오면 이 옹벽을 넘어요. 파도가. 옹벽이 다 깨져서 몇 번째 (다시) 한 거 에요.</quote:>'+
        '<vod scrollPlay fade_out poster="http://images.joins.com/newsroom/eastsea/thumb/1_1.jpg" src="http://cf.c.ooyala.com/pibWxvYjE6v1hcP5yl6ubPn2wYv39fiJ/DOcJ-FxaFrRg4gtDEwOjFyazowODE7G_"></vod:>'
    end

    def c2h
        '집 앞 백사장이 사라지면서 버려진 주택도 있다. 경북 경주시 감포읍 나정항 바닷가에는 80여㎡ 크기의 민박집 한 채와 낡은 주택 하나가 위태롭게 서있다. 민박집 주인 이모(81) 할머니는 시름이 깊다.</end:>'+
        '<slide mini right under_text="*경주 감포읍 나정리의 해안선 변화 [자료 경상북도]">'+
            '{"slide": [ ["http://images.joins.com/newsroom/eastsea/sea_01.jpg", "", "2011.06"], ["http://images.joins.com/newsroom/eastsea/sea_02.jpg", "", "2012.06"], ["http://images.joins.com/newsroom/eastsea/sea_03.jpg", "", "2013.06"], ["http://images.joins.com/newsroom/eastsea/sea_04.jpg", "", "2014.06"] ]}'+
        '</slide:>'+
        '<quote>바다가 자꾸 뭍으로 들어와 백사장을 다 가꼬가부렸심더. 민박집 손님도 다 쫓아내고 내 집까지 빼앗아갈라고 카네예. 해녀 탈의실도 보이소. 걱정 아입니꺼...</quote:>'+
        '민박집·해녀 탈의실에서 바다까지 거리는 채 1m도 되지 않는다. 대문을 나서면 바로 바다인 셈이다. 파도가 심한 날이면 바닷물이 민박집 앞으로 튀어 오른다.</end:>'+
        '<quote>10년 전까지만 해도 100 걸음은 걸어 나갈 수 있는 백사장이 있었어예. 그랬는데 매년 백사장이 줄어들더니 저렇게 집하고 바다가 딱 붙어버렸다 아입니꺼. 황당합니더.</quote:>'+
        '이씨는 최근 3년간 10번 넘게 자갈을 사다가 집 담과 바다 사이에 퍼부었다. 바다가 집으로 곧 들이닥칠 것만 같아서다. 그는 "집이 곧 잠겨버릴 것만 같았다"고 당시를 회상했다.</end:>'+
        '길 건너 슈퍼마켓 주인도 불안하긴 마찬가지다. 파도가 높게 이는 날엔 바닷물이 2차선 도로를 넘어 가게 문 앞까지 튀기 때문이다. 경상북도가 앞 바다에 수중 방파제(잠제·이안제) 300여개를 설치했지만 별 도움이 안 됐다. 방파제 일부는 벌써 물에 잠겼다.</end:>'
    end

    def c3h
        '<vod scrollPlay fade_out poster="http://images.joins.com/newsroom/eastsea/thumb/1_2.jpg" src="http://cf.c.ooyala.com/o3bWxvYjE6VdW14VoYhtJRwLksAtwfQS/DOcJ-FxaFrRg4gtDEwOjFyazowODE7G_"></vod:>'+
        '<quote>레일바이크 타러 사람들이 많이 왔죠. 하지만 3~4개월간 운영을 못했을 땐 관광객이 3분의 2 정도 줄었어요.</quote:>'+
        '강원도 강릉 정동진에서 슈퍼마켓을 운영하는 강세호(63)씨 얘기다. 국내 대표 해맞이 명소인 정동진의 레일바이크는 지난 1월 선로 100여m가 무너졌다. 6개월이 지난 지금도 전체 5.1㎞ 중 절반인 2.8㎞ 구간에만 바이크가 다닌다.</end:>'+
        '<vod mini right scrollPlay poster="http://images.joins.com/newsroom/eastsea/thumb/1_3.jpg" src="http://cf.c.ooyala.com/t5bGxvYjE6pCV4Ok4CLc9vimXCzmIEAB/DOcJ-FxaFrRg4gtDEwOjFyazowODE7G_">'+
            '정동진 레일바이크가 무너진 데는 옹벽의 영향이 컸다.'+
        '</vod:>'+
        '하서해수욕장이 사라지고 정동진 레일바이크 선로가 무너진 건 해안침식(海岸浸蝕) 때문이다. 파도·바람 등의 영향으로 바닷가 모래와 토양·암석이 깎여 들어가는 현상을 가리킨다.</end:>'+
        '해변에서 침식이 일어나면 해안선이 육지 쪽으로 후퇴하게 된다. 정동진에선 바다가 20~30m 길이의 백사장을 집어삼켰다. 그 탓에 주변 지반이 약해졌고, 옹벽이 무너지며 선로 붕괴로 이어졌다.</end:>'
    end

    def c4h
        '해안침식은 바닷가 주민들의 삶을 위협한다. 백사장은 폭풍·해일 등으로부터 육지를 보호한다. 침식으로 해안선이 후퇴하고 연안 수심이 깊어지면 이런 보호 기능을 제대로 수행할 수 없게 된다.</end:>'+
        '백사장이 사라지면 관광객도 줄어든다. 지역의 부가가치가 떨어지고 바닷가 주민들은 경제적 타격을 입게 된다.</end:>'+
        '전국에서 해안침식이 가장 심한 곳은 경북 울진군이다. 5년간 11개 조사 대상 지점에서 22만4415㎡의 해변이 사라졌다. 경북 포항시에서도 화진·영일대 등 8개 해변 19만3670㎡가 바다로 바뀌었다. 강원도 강릉시에선 경포·안목 등 25개 지점 13만2285㎡, 고성군에선 송지호·삼포 등 26개 지점 8만9027㎡의 해변이 바다가 됐다.</end:>'+
        '전체적으로 보면 최근 5년새 경북 55만2317㎡, 강원 39만4341㎡ 등 동해안 120여 곳 총 94만6658㎡의 해변이 사라졌다. 축구장(면적 7140㎡) 132개에 달하는 면적이 바다에 잠긴 셈이다.</end:>'+
        '<img src="http://images.joins.com/newsroom/eastsea/sea01_info.png">'+
            '2010년~2015년 사라진 해변. 서울월드컵 경기장 132개 면적'+
        '</img:>'
    end

    def content_to_html
        return '<b>.</b>' if self.content.nil?

        content = self.content.split('</').map do |sen|
            sen = sen.split('end:>').last
            sen = sen.split('vod:>').last if sen
            sen = sen.split('img:>').last if sen
            sen = sen.split('slide:>').last if sen
            sen = sen.split('quote:>').last if sen
            sen
        end

        content = content.compact.map do |line|
            if line.include? '<vod '  ## vod line (has several options)
                meta, under_text = line.split('">')
                meta = meta.gsub('<vod ','')

                mini, right, scroll, fade, poster, source = nil
                mini    = true if meta.include? 'mini'
                right   = true if meta.include? 'right'
                scroll  = true if meta.include? 'scrollPlay'
                fade    = true if meta.include? 'fade_out'
                poster  = meta.split('poster="')[1].split('"')[0] if meta.include? 'poster="'
                source  = meta.split('src="')[1].split('"')[0] if meta.include? 'src="'

                result = vod(self.id, poster, source, under_text, mini, right, scroll, fade)

            elsif line.include? '<slide ' ## slide line (has several options)
                meta, slide_obj = line.split('">')
                meta = meta.gsub('<vod ','')

                mini, right, under_text = nil
                mini    = true if meta.include? 'mini'
                right   = true if meta.include? 'right'
                under_text = meta.split('under_text="')[1].split('"')[0] if meta.include? 'under_text="'

                slide_obj = JSON.parse(slide_obj)
                result = slide(self.id, under_text, mini, right, slide_obj['slide'])

            elsif line.include? '<img '  ## img line (has 'src' and 'alt')
                meta, alt_sentence = line.split('">')
                meta = meta.gsub('<img ','')

                src = nil
                src = meta.split('src="')[1].split('"')[0] if meta.include? 'src="'

                result = img(src, alt_sentence)

            elsif line.include? '<quote>'  ## quote line
                line = line.gsub('<quote>','')
                result = quote line

            else line  ## normal line
                result = normal line

            end

            result
        end

        content.join('')
    end

    ## HTML Formats

    # 1. Normal sentence
    # #     SENTENCE</end:>
    #
    # 2. Quote sentence
    # #     <quote>SENTENCE</quote:>
    #
    # 3. Vod object
    # #     <vod (mini) (right) (scrollPlay) (fade) (poster="img_url") (src="video_url")>
    # #         UNDER_LINE_SENTENCE
    # #     </vod:>
    #
    # 4. Img object
    # #     <img (src="img_url")>ALT_SENTENCE</img:>
    #
    # 5. Slide object
    # #     <slide (mini) (right) (under_text="")>
    # #         {
    # #             slide: [
    # #                 [img_src, alt, label],
    # #                 [img_src, alt, label],
    # #                 [img_src, alt, label]
    # #             ]
    # #         }
    # #     </slide:>

    def normal sentence
        "<p>#{sentence}</p>"
    end

    def quote sentence
        "<div class=\"quote_wrap\">"+
            "<div class=\"quote_mark\"></div>"+
            "<p class=\"quote\">#{sentence}</p>"+
        "</div>"
    end

    def vod (id, poster, source, under_text, mini, right, scroll, fade)
        "<div class=\"#{'mini' if mini} vod_container #{'right-side' if right}\">"+
            "<video id=\"vod_#{id}\" class=\"section_video #{'scrollPlay' if scroll} #{'fade_out' if fade} big_photo height_set\" controls=\"\" preload=\"true\" poster=\"#{poster}\" #{'onended="$(this).removeClass(\'on\')"' if fade}>"+
                "<source src=\"#{source}\">"+
            "</video>"+
            "<span class=\"under_text\">#{under_text}</span>"+
        "</div>"
    end

    def img (src, alt)
        "<div class=\"img_container\">"+
            "<img src=\"#{src}\" alt=\"#{alt}\">"+
        "</div>"
    end

    def slide (slide_id, under_text, mini, right, imgs)
        i = 0
        indicators = imgs.map do |img|
            dom = "<li data-target=\"#carousel-#{slide_id}\" data-slide-to=\"#{i}\" class=\"#{'active' if i == 0}\"><span>#{img[2]}</span></li>"
            i += 1
            dom
        end

        i = 0
        images = imgs.map do |img|
            dom = "<div class=\"item #{'active' if i == 0}\"><img src=\"\" style=\"background-image: url(#{img[0]})\" data-alt=\"#{img[1]}\" alt=\"\"></div>"
            i += 1
            dom
        end

        result = "<div class=\"#{'mini' if mini} slide_container #{'right-side' if right}\">"+
                    "<span class=\"under_text\"> #{under_text}</span>"+
                    "<div id=\"carousel-#{slide_id}\" class=\"carousel slide carousel-fade\" data-ride=\"carousel\">"+
                        "<ol class=\"carousel-indicators\">"+
                            indicators.join('') +
                        "</ol>"+
                        "<div class=\"carousel-inner\" role=\"listbox\">"+
                            images.join('') +
                        "</div>"+
                    "</div>"+
                "</div>"


        result
    end
end

=begin

모두가 쉽게 활용하는 인공지능.
Auto.ai 팀의 발표를 시작하겠습니다.


"모두가 쉽게 인공지능을 활용하게 하려면?"


# 첫 번째 시도. 플랫폼을 꿈꾸다

처음에, 저희는 플랫폼을 구상했습니다. 무턱대고.
어느 정도 갖추어진 인공지능을 만들려면, 막대한 양의 데이터가 필요하니까,
데이터를 제공하는 쪽이 있고, 그걸 가지고 다양한 튜닝을 시도하는 사람들이 다른 한 쪽에 있으면 좋겠다.

그런데 이 플랫폼을 초기에 시도하기엔 무리가 있으니,
누구나 쉽게 이용할 수 있는 인공지능 제작 도구를 만들어보자.

간단한 플로우를 만들었고, 돌아온 반응은
"어차피 개발자만 이해 가능 ..."

아무리 봐도 모두에게 쉬운 인공지능과는 거리가 멀었습니다.
고민 끝에 다시 처음으로 돌아가서
두 번째 시도를 시작했습니다.


# 두 번째 시도. 인공지능을 가르치다

"모두에게 인공지능이 쉬워지려면?"

두 번째 시도는 이 질문으로 출발했고,
'그러면 우선 가르쳐보자'

'교육'으로 방향을 잡아서, 저희는 '선생님'이 되기로 합니다.

'코딩 경험이 없는 사람'도,
'쉽게 흥미를 갖고 개념부터 이해할 수 있도록' 말이죠.

첫 번째 시도에서부터 자체적으로 제작해온
'조립형 인공지능 제작 도구'를 교육에 활용한다면
교육의 효과를 더 높여줄 것으로 기대하고 있습니다.

##

그렇게 구상하게된 사업모델입니다.
코딩과 인공지능의 개념과 활용에 대한 지식을 전달하고
얻게 되는 수강료,

그리고 관련된 컨텐츠를 제작해 교육 플랫폼에 제공함으로써
컨텐츠 이용료를 취하는 형태의 교육사업입니다.

##

기존의 교육 프로그램들은 최근들어 많아지고 있지만,
전문 분야 교육의 경우, 높은 가격대를 형성하고 있거나
가격대가 낮은 경우, 강의 품질이 현저히 떨어지고 있었습니다.
더구나, 개발자가 아닌 일반인을 대상으로 한 인공지능 교육은 아직 찾아보기 어렵습니다.

(낮은 가격 -> 접근성) 저희는 컨텐츠 납품으로 수강료 단가를 낮추고,
(일반인 대상의 교육) 20대 이하 코딩 경험이 없는 학생들을 시작으로 일반인을 대상으로 하는
차별화된 교육 서비스를 제공하고자 합니다.

##

현재 프로그래밍 교육 및 컨텐츠 시장은 ()억원 규모로 추정되며,
일반인과 인공지능 카테고리를 기준으로 한 저희의 유효시장은 ()억원대로 추정됩니다.

저희는 "교딩 교육 서비스를 이용하고자 하는 서울지역 20대 이하 청소년/대학생"과
"유력한 코딩 교육 채널 3곳"을 시작으로 교육 서비스 시장에 진입해
단계적으로 규모를 확장 하고자 합니다.


저희가 교육 서비스에 자신이 있는 이유는
축적된 노하우를 가지고 있기 때문입니다.

저는 다년간 비전공자 및 일반인을 대상으로 프로그래밍 수업을 진행해 온 경험이 있으며,
동료인 000은 로봇과 시스템에 대해 깊이 이해하고 있습니다.

그리고 여기 더해 자체 제작해 보유하고 있는 '교육 도구'도 중요한 무기가 될 것입니다.

이 것으로
모두가 쉽게 활용하는 인공지능.
Auto.ai 팀의 발표를 마치겠습니다.



#############################
저희는 첫 해,
"코딩 교육 서비스를 이용하고자 하는 서울지역 20대 이하 청소년/대학생 480여명 (15만원/월 x 3개월 x 1천명 = 3억원)"
을 대상으로 교육 서비스를 제공하고,

"3가지 코딩 교육 채널 (2400명/연 x 평균단가 4만원 x 배분비율 60% = 5760만원)"을 통해
3.5억원

=end