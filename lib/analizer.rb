require "natto"

module KyoIndustry
  class Analizer
    # このアプリ用のメソッド
    # 第一引数 : 形態素解析にかけるテキスト
    # 第二引数 : surfaceかfeatureかを判別
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

    # API用
    def morpheme(text)
      natto = Natto::MeCab.new
      @result = ""

      natto.parse(text) do |n|
        break if n.surface == ""
        @result += "#{n.surface} : #{n.feature}\n"
      end

      return @result
    end
  end
end
