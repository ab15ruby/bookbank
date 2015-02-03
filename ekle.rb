require_relative 'kullanici'
require_relative 'dosya'

class Ekle

  GIRIS = 1
  UYE_OL = 2


  print "BookBank'a hoşgeldiniz. Size yardımcı olabilmem için lütfen yapmak istediğiniz işlemi belirtiniz: GİRİŞ: 1 ÜYE OLMAK İSTİYORUM: 2\n"
  print "Yapmak istediğim işlem: "


  loop do
    uye_mi_degil_mi = gets.chomp.to_i

    if uye_mi_degil_mi == 1
      Kullanici.new
      puts 'Enter an ID :'

      @id = gets.chomp

      puts "Enter the given book :"
      @user_books = gets.chomp
      puts "Enter the author :"
      @author = gets.chomp
      puts 'Enter the book point :'
      @book_page = gets.to_s.chomp
      print "O halde girişinizi gerçekleştirelim... \n"
      # require class
      break
    elsif uye_mi_degil_mi == 2
      print "Memnuniyetle! Üyelik sayfasına yönlendiriliyorsunuz"
      # require class
      break
    else print "Lütfen belirtilen seçenekler arasından seçim yapınız: GİRİŞ: 1 ÜYE OLMAK İSTİYORUM: 2"
      break
    redo
    end
  end


end