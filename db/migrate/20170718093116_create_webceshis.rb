class CreateWebceshis < ActiveRecord::Migration[5.0]
  def change
    create_table :webceshis do |t|
      t.string :mingcheng
      t.string :jiaoben

      t.timestamps
    end
  end
end
