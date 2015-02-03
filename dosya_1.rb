#puts "\e[H\e[2J" #menü çalışmadan önce ekranı temizleyecek

GIRIS = 1
UYE_OL = 2


  print "BookBank'a hoşgeldiniz. Size yardımcı olabilmem için lütfen yapmak istediğiniz işlemi belirtiniz: GİRİŞ: 1 ÜYE OLMAK İSTİYORUM: 2\n"
  print "Yapmak istediğim işlem: "


loop do
  uye_mi_degil_mi = gets.chomp.to_i

    if uye_mi_degil_mi == 1
      print "O halde girişinizi gerçekleştirelim... \n"
    # require class
    elsif uye_mi_degil_mi == 2
      print "Memnuniyetle! Üyelik sayfasına yönlendiriliyorsunuz"
     # require class
    else print "Lütfen belirtilen seçenekler arasından seçim yapınız: GİRİŞ: 1 ÜYE OLMAK İSTİYORUM: 2"
      redo
    end
end

































