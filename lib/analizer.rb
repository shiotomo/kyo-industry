require "natto"

module KyoIndustry
  class Analizer
    def morpheme(text)
      natto = Natto::MeCab.new
      @result = ""

      natto.parse(text) do |n|
        break if n.surface == ""
        @result += "#{n.surface}  :  #{n.feature}<br />"
      end

      return @result
    end
  end
end
