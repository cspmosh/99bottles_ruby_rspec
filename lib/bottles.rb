class Bottles
  def verse(verse_number)
    recite_verse(verse_number)
  end

  def verses(verse_1, verse_2)
    output = ""
    verse_1.downto(verse_2) do |verse_num|
      output.concat(recite_verse(verse_num))
      output.concat("\n") unless verse_num == verse_2
    end

    output
  end

  def song
    verses(99, 0)
  end
private

  def bottle_count(quantity)
    return "#{quantity} bottle" if quantity == 1
    return "no more bottles" if quantity == 0

    "#{quantity} bottles"
  end

  def recite_verse(verse_number)
    if verse_number.positive?
      "#{bottle_count(verse_number).capitalize} of beer on the wall, " +
      "#{bottle_count(verse_number)} of beer.\n" +
      "Take #{verse_number == 1 ? "it" : "one"} down and pass it around, " +
      "#{bottle_count(verse_number - 1)} of beer on the wall.\n"
    else
      "No more bottles of beer on the wall, " +
      "no more bottles of beer.\n" +
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end
end
