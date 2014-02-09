require 'sinatra'

get '/' do
  erb :landing
end

post '/' do
  # debug
  raise params.inspect

  significant_other = params[:me]
  likes  = params[:likes]

   if likes == 'no-clue'
      @gift_name = 'Scuba diving instructor'
      @gift_url  = 'http://www.padi.com/scuba/scuba-diving-guide/teach-scuba-diving/go-pro-scuba-diving-careers/'
      @gift_img  = 'scuba.jpeg'

    elsif (me == 'animal' && (likes == 'outdoor' || likes == 'science' || likes == 'sports'))
    @gift_name = 'Vet'
    @gift_url  = 'http://www.rcvs.org.uk/education/i-want-to-be-a-vet/'
    @gift_img  = 'vet.png'

    elsif me == 'geek' && if (likes == 'science' || likes == 'outdoor')
        @gift_name = 'Computer Scientist'
        @gift_url  = 'http://www.city.ac.uk/courses/undergraduate/computer-science'
        @gift_img  = 'geek.jpg'
     
      elsif (me == 'geek' && likes == 'sports') || if (me == 'sports' && likes == science)
          @gift_name = 'Sports Science Engineer'
          @gift_url = 'https://www.strath.ac.uk/dmem/prospectivestudents/undergraduatecourses/sportsengineering/'
          @gift_img = 'sport-science.jpg'

        elsif (me == 'geek' && likes == 'music')
        @gift_name = 'Sound Engineer'
        @gift_url  = 'http://www.pointblanklondon.com/courses/music-production-courses.php'
        @gift_img  = 'sound.jpg'

        elsif me == 'sport' && if(likes == 'sports' || likes == 'outdoor')
        @gift_name = 'Professional Athlete'
        @gift_url  = 'http://money.howstuffworks.com/how-to-become-a-professional-athlete.htm'
        @gift_img  = 'athlete.jpg'

        elsif (me == 'sport' && likes == 'sports')
        @gift_name = 'Professional Dancer'
        @gift_url  = 'https://www.rad.org.uk/'
        @gift_img  = 'dance.jpg'

        else 
        @gift_name = 'Animal-Choreography Stunt Artist'
        @gift_url  = 'http://www.halfanimal.com/category/choreography-stunt-coordinating/'
        @gift_img  = 'hippo.jpg'

      end

      erb :result
        end