require 'docomoru'
client = Docomoru::Client.new(api_key: ENV["DOCOMO_API_KEY"])

input = nil
while input != 'EOF'
  puts 'メッセージを入力してください(EOFと入力すれば終了します)'
  print '*'
  input = gets.chomp
  if input != 'EOF'
    response = client.create_dialogue(input)
    puts response.body['utt']
  end
end
