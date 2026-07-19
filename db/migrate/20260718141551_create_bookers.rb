class CreateBookers < ActiveRecord::Migration[8.0]
  def change
    create_table :bookers do |t|
      t.string :title
      t.string :body
      t.timestamps
    end
  end

  def create
  @booker = Booker.new(booker_params)
  if @booker.save
    redirect_to bookers_path, notice: "登録しました"
  else
    @bookers = Booker.order(:id)  # 一覧も再取得しておく
    render :index
  end
end
