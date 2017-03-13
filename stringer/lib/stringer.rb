require "stringer/version"
module Stringer
    def self.spacify *strings
        str = strings.join(' ')
        str
    end

    def self.minify(string, max)
        result = ""
        if string.length < max
            string
        else
            result = string[0...max]
            result += "..."
            result
        end
    end

    def self.replacify(oStr, rStr, nStr)
        result = oStr.gsub(rStr, nStr)
        result
    end

    def self.tokenize(str)
        result = str.split(' ')
        result
    end

    def self.removify(str, rStr)
        result = str.gsub(" "+ rStr, "")
        result
    end
end
