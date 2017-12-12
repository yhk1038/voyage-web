sys_root = Rails.root.to_s
require "#{sys_root}/app/uploaders/img_uploader"
require "#{sys_root}/app/uploaders/vod_uploader"

class Article < ApplicationRecord
    belongs_to :magazine
    has_many :sections
    # has_many :comments

    # include ImgUploader
    # include VodUploader
    mount_uploader :header_img, ImgUploader
    mount_uploader :header_vod, VodUploader

    before_destroy :destroy_sub_model
    after_destroy :destroy_media_file

    def prev_one
        articles = self.magazine.articles
        ids = articles.ids
        current_index = ids.index(self.id)
        prev_index, prev_article = -10, nil

        unless current_index.zero?
            prev_index = current_index - 1
            prev_article = articles.to_a[prev_index]
        end

        return prev_index+1, prev_article
    end

    def next_one
        articles = self.magazine.articles
        ids = articles.ids
        current_index = ids.index(self.id)
        next_index, next_article = -10, nil

        unless current_index == (ids.length - 1)
            next_index = current_index + 1
            next_article = articles.to_a[next_index]
        end

        return next_index+1, next_article
    end

    def destroy_sub_model
        self.sections.destroy_all
    end

    def destroy_media_file
        dir_path = Rails.root.to_s + "/public/uploads/article/#{self.id}"
        `rm -rf #{dir_path}`
    end
end
