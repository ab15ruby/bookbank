class Kitap

  attr_accessor :book_name, :author, :points

  def initialize (veriler)
    @book_name,@author, @points = *veriler
  end

  def cikti
    "#{@book_name},#{@author},#{@points}"
  end


end