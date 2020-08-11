def mineMaskify(cc)
    unmaks = cc.split(//).last(4).join
    mask = cc.gsub(unmaks, "").gsub(/\w/, "#")

    return mask + unmaks
end

def bestPraticeMaskify(cc)
    cc.gsub(/.(?=....)/, '#')
end

cc = gets.to_s

puts mineMaskify(cc)
puts bestPraticeMaskify(cc)