#write your code here
def to_pig_latin(word)
    vowels='aeiou'
    index=-1
    capitalized = false
    if word == word.capitalize
        capitalized = true
    end
    word=word.downcase
    (word.length).times do |i|
        if ((vowels.include? word[i]) == false)
            index+=1
        elsif (word[i]=='u' && word[i-1]=='q')
            index+=1
        else
            break
        end
    end
    if index==-1
        front = word 
        back=""
    else
        front = word[0..index]
        back = word[index+1..word.length]
    end
    if (capitalized)
        back.capitalize + front.downcase + "ay"
    else
        back + front + 'ay'
    end
end

def translate(sentence)
    words = sentence.split(' ')
    (words.length).times do |i|
        words[i] = to_pig_latin(words[i])
    end
    new_sentence = words.join(' ')
    new_sentence
end





