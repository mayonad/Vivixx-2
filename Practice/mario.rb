
def typer(x)
  print " "*16
  arr = x.split("")
  arr.each do |z|
    print z
    sleep(1.0/24.0)
  end
end

def banner
typer %q{
   ___  ___  _ __ (_) ___  | |_| |__   ___  | |__   ___  __| | __ _  ___| |__   ___   __ _
  / __|/ _ \| '_ \| |/ __| | __| '_ \ / _ \ | '_ \ / _ \/ _` |/ _` |/ _ \ '_ \ / _ \ / _` |
  \__ \ (_) | | | | | (__  | |_| | | |  __/ | | | |  __/ (_| | (_| |  __/ | | | (_) | (_| |
  |___/\___/|_| |_|_|\___|  \__|_| |_|\___| |_| |_|\___|\__,_|\__, |\___|_| |_|\___/ \__, |
                                                              |___/                  |___/
}
end

banner
sleep(1)
system "cls"
puts "\n" *60
typer ("I can run as fast as I could").center(110)
sleep(2)
system "cls"


puts "\n"*50
