# # プロジェクトディレクトリへのパス
# @path = "/var/www/kyo-industry/"
# # 
worker_processes 2 # CPUのコア数に揃える
# working_directory @path
timeout 300
# listen '/tmp/kyo-industry.sock' # Nginxのconfig内にあるupstreamで、このパスを指定
# pid "#{@path}tmp/pids/unicorn.pid" # pidを保存するファイル
# # # logを保存するファイル
# stderr_path "#{@path}log/unicorn.stderr.log"
# stdout_path "#{@path}log/unicorn.stdout.log"
# preload_app true
