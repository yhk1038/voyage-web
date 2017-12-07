class CreateMConfigs < ActiveRecord::Migration[5.1]
    def change
        create_table :m_configs do |t|
            t.references :magazine, foreign_key: true
            t.integer :article_number_shape

            t.timestamps
        end
    end
end
