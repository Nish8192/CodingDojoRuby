require "stringer/version"
module Stringer
    def self.spacify *strings
        str = strings.join(' ')
    end

    def self.minify(string, max)
        result = ""
        if string.length < max
            string
        else
            result = string[0...max]
            result += "..."
        end
    end

    def self.replacify(oStr, rStr, nStr)
        result = oStr.gsub(rStr, nStr)
    end

    def self.tokenize(str)
        result = str.split(' ')
    end

    def self.removify(str, rStr)
        result = str.gsub(" "+ rStr, "")
    end
end
