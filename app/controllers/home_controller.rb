class HomeController < ApplicationController
   def index
        @sermoes =  Sermao.limit(3)
        d = Date.current.next_day(7-Date.current.wday)
        frequency = {1=>"Janeiro", 2=>"Fevereiro", 3=>"Março", 4=>"Abril", 5=>"Maio", 6=>"Junho", 7=>"Julho", 8=>"Agosto", 9=>"Setembro", 10=>"Outubro", 11=>"Novembro", 12=>"Dezembro" }
        @date = d.mday.to_s + " de " + frequency[d.mon].to_s + " de " + d.year.to_s + " às 10:00"
   end
end
