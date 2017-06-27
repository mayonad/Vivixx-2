def typer(x)
  print " "*16
  arr = x.split("")
  arr.each do |z|
    print z
    sleep(1.0/24.0)
  end


def start
  typer ("Hi Good Morning")
end

start
