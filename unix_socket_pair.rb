# プロセス間でファイルディスクリプタを渡す
require 'socket'

send, recv = UNIXSocket.pair

fork do
  sleep 1
  recv_f = recv.recv_io
  recv_f.write('hello!')
end

f = File.open('./test.txt', 'a')
send.send_io f
