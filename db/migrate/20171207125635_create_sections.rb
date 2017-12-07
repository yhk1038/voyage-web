class CreateSections < ActiveRecord::Migration[5.1]
    def change
        create_table :sections do |t|
            t.references :article, foreign_key: true
            t.integer :template, null: false, default: 1
            t.string :title
            t.text :content

            t.timestamps
        end
    end
end
