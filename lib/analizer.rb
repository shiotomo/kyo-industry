require "natto"

module KyoIndustry
  class Analizer
    def morpheme(text, type)
      natto = Natto::MeCab.new
      @result = ""

      case type
      when "surface"
        natto.parse(text) do |n|
          break if n.surface == ""
          @result += "#{n.surface}<br />"
        end
      when "feature"
        natto.parse(text) do |n|
          break if n.surface == ""
          @result += "#{n.feature}<br />"
        end
      end

      return @result
    end
  end
end
