class Dosya

	def initialize (dosya_adi)
		@dosya_adi = dosya_adi
    #@kitap_adi = kitap_adi
	end

	def satirlar
    satlar = []
		File.open(@dosya_adi, "r") do |dosya|
			dosya.readlines.each { |satir| satlar << satir.chomp }
    end
		satlar
	end

	def ekle (satir)
		File.open(@dosya_adi, "a") do |dosya|
			dosya.puts satir
		end 
	end

	def olustur (icerik)
		File.open(@dosya_adi, "w") do |dosya|
			dosya.puts icerik
		end 
  end

  def cikar(satir)
    File.open('kitap_listesi', 'w') do |f|
      f.write(satir.join(''))
    end
  end


end