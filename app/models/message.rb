class Message < ActiveRecord::Base
    #名前は必須かつ２０文字以内
    validates :name , length:{ maximum: 20 }, presence:true
    #内容入力は必須かつ２文字以上30文字以下
    validates :body , length:{ minimum: 20, maximum: 30 }, presence:true
    #年齢のカラムは0以上
    validates :age , numericality: { greater_than: 0 }, presence:true
end
