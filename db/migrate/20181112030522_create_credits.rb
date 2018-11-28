class CreateCredits < ActiveRecord::Migration[5.2]
  def change
    create_table :credits, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      #追加項目
            t.integer :user_id
            t.string :credit_information
      t.timestamps
    end
  end
end

