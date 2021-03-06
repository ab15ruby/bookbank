# class Kullanici

#   attr_accessor :id, :users_point, :user_books, :author, :book_points

#   def initialize(veriler)
#     @id,@users_point,@user_books ,@author , @book_points = *veriler

#   end
#   @users_point = 100
#   @user_books = nil
#   @author = nil

#   def satir
#     "users id : #{@id},\n User's point : #{@users_point},\n User's books : #{@user_books}, Author : #{@author}, Book's Point :#{@book_points}"
#   end

#   def kaydet
#     File.open("#{@id}", "a") do |dosya|
#       dosya.puts satir
#     end
#   end

#   def self.satir(satir)
#     self.new(satir.split(","))
#   end

#   def self.kisiler
#     kullanicilar = []
#     File.open("#{@id}+","r") do |dosya|
#       dosya.readlines.each do |satir|

#         kullanicilar << self.satir(satir.chomp)
#       end
#       kullanicilar
#     end
#   end

#   def puan_hesap
#     if(@book_page <= 1000)
#       @points = @book_page * 0,25
#     else
#       @point = 250
#     end

#   end


#   def self.ekle
#   a1=Kullanici.new(["#{@id}","#{@users_point} ","#{@user_books}","#{@author}","#@book_points"])
#   #a1=Kullanici.new(["#{@id}" + "'s Book Libary\n"," Point :"+"#{@users_point}"," Book :"+"#{@user_books}"," Author"+"#{@author}"," Book point :"+"#{@book_points}"])
#   a1.kaydet
#     end
# end

class Kullanici

  attr_accessor :point, :kitaplar

  def initialize (veriler)
    @point, @kitaplar = *veriler
  end

  def cikti
    "#{@point},#{@kitaplar.join("|")}"
  end

  def self.girdi (giris)
    point, kitaplar = giris.split(",")
    self.new([point, kitaplar.split("|")])
  end

  def ekle (puan)
    @point = @point.to_i + puan
  end

  def cikar (puan)
    @point = @point.to_i - puan
  end

end