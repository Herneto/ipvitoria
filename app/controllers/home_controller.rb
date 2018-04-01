class HomeController < ApplicationController

   def index
        @sermoes =  Sermao.limit(3)
   end
end
