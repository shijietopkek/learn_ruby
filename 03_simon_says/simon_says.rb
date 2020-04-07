#write your code here
def echo(sentence)
    sentence
end

def shout(sentence)
    sentence.upcase
end

def repeat(sentence, n=2)
    ([sentence]*n).join(' ')
end

def start_of_word(word, n=1)
    word[0..n-1]
end

def first_word(sentence)
    array = sentence.split(' ')
    array[0]
end

def titleize(sentence)
    array = sentence.split(' ')
    (array.length).times do |i|
        if (i!=0 &&(array[i]=='and'||array[i]=='over'|| array[i]=='the'))
            next
        else
            array[i]=array[i].capitalize
        end
    end
    sentence = array.join(' ')
    sentence
end
