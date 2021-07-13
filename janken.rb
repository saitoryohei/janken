def janken
puts "じゃんけん...1(グー) 2(チョキ) 3(パー) 4(やめる)"
janken_result = gets.to_i
puts "ホイ！"
puts"___________________________________________________"
array1 =["グー","チョキ","パー"]
computer_result = array1[rand(3)]

if computer_result == array1[0]
  pattern = "パターンA"
elsif computer_result == array1[1]
  pattern = "パターンB"
else
  pattern = "パターンC"
end  

def win
your_direction = gets.to_i
puts "__________________________________________________"
puts "ホイ！" 
if your_direction == 1 
  direction = "上"
elsif your_direction == 2
  direction = "下"
elsif your_direction == 3
  direction = "左"
elsif your_direction == 4
  direction = "右"
end
pc_direction = rand(0..3)
if pc_direction == 0 
  pdirection = "上"
elsif pc_direction == 1
  pdirection = "下"
elsif pc_direction == 2
  pdirection = "左"
elsif pc_direction == 3
  pdirection = "右"
end
 puts "あなた：[#{direction}]を差しました。
 相手：[#{pdirection}]を向きました。"
 puts "__________________________________________________" 
 if direction == pdirection
 puts "YOU WIN!!"
 else
 puts janken
end
end

def lose
your_direction = gets.to_i
puts "__________________________________________________"
puts "ホイ！" 
if your_direction == 1 
  direction = "上"
elsif your_direction == 2
  direction = "下"
elsif your_direction == 3
  direction = "左"
elsif your_direction == 4
  direction = "右"
end
pc_direction = rand(0..3)
if pc_direction == 0 
  pdirection = "上"
elsif pc_direction == 1
  pdirection = "下"
elsif pc_direction == 2
  pdirection = "左"
elsif pc_direction == 3
  pdirection = "右"
end
 puts "相手：[#{pdirection}]を差しました。
 あなた：[#{direction}]を向きました。"
 puts "__________________________________________________"
 if direction == pdirection
 puts "YOU LOSE"
 else
 puts janken
end
end

if janken_result == 1
  puts "あなた:[グー]を出しました。
  相手:[#{computer_result}]を出しました。"

case pattern
  
  when "パターンA"
  puts "あいこで・・・"
  puts janken

  when "パターンB"
  puts "（あなたの指）あっち向いて〜
  あなたの指の方向 1(上) 2(下) 3(左) 4(右)"
  puts win
  
  when "パターンC"
  puts "（相手の指）アッチムイテ〜
  あなたの顔の方向 1(上) 2(下) 3(左) 4(右)"
  puts lose
  
end
  
elsif janken_result == 2
  puts "あなた:[チョキ]を出しました。
  相手:[#{computer_result}]を出しました。"

  case pattern
  when "パターンA"
  puts "（相手の指）アッチムイテ〜
  あなたの顔の方向 1(上) 2(下) 3(左) 4(右)"
  puts lose
  when "パターンB"
  puts "あいこで・・・"
  puts janken
  when "パターンC"
  puts "（あなたの指）あっち向いて〜
  あなたの指の方向　1(上) 2(下) 3(左) 4(右)" 
  puts win
end

elsif janken_result == 3
  puts "あなた:[パー]を出しました。
  相手:[#{computer_result}]を出しました。"

  case pattern
  when "パターンA"
  puts "（あなたの指）あっち向いて〜
  あなたの指の方向　1(上) 2(下) 3(左) 4(右)" 
  puts win
  when "パターンB"
  puts "（相手の指）アッチムイテ〜
  あなたの顔の方向 1(上) 2(下) 3(左) 4(右)"
  puts lose
  when "パターンC"
  puts "あいこで・・・"
  puts janken
end

else 
  puts "あなた：やめる"
end
end
puts janken


