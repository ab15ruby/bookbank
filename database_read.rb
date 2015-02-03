class Database_read

  attr_accessor :ad, :yazar, :puan

  def initialize(veriler)

    @ad, @yazar, @puan = *veriler

  end

  def satir
    "#{@ad},#{@yazar},#{@puan}"
  end

  File.open("kitap_listesi", "r") do |dosya|
    dosya.readlines.each do |satir|
      puts satir
      end
    end



end