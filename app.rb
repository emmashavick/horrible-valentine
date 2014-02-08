require 'sinatra'

get '/' do
  erb :landing
end

post '/' do
  # debug
  # raise params.inspect

  significant_other = params[:significant_other_is]
  likes  = params[:likes]

  # horrible nested if/else here
  # change me please!
  if significant_other == 'sport' && significant_other == 'animals'
    @gift_name = 'Vet'
    @gift_url  = 'http://www.rcvs.org.uk/education/i-want-to-be-a-vet/'
    @gift_img  = 'vet.png'
  else
    if likes == 'no-clue'
      @gift_name = 'Scuba diving instructor'
      @gift_url  = 'http://www.padi.com/scuba/scuba-diving-guide/teach-scuba-diving/go-pro-scuba-diving-careers/'
      @gift_img  = 'scuba.jpeg'
    else
      if likes == 'gardening'
        @gift_name = 'The Humanure Handbook: A Guide to Composting Human Manure'
        @gift_url  = 'http://www.amazon.com/The-Humanure-Handbook-Composting-Edition'
        @gift_img  = 'The-Humanure-Handbook.jpg'
      else
        if likes == 'music'
          if significant_other == 'male'
            @gift_name = '50 Kazoos, Assorted Colors'
            @gift_url  = 'http://www.amazon.com/Hohner-Inc-USA-KC-50/dp/B0002F4TJ6'
            @gift_img  = '50-Kazoos.jpg'
          else # significant_other == 'female'
            @gift_name = 'I\'m Sick of You, by Iggy & The Stooges'
            @gift_url  = 'http://www.amazon.com/Sick-You-Iggy-The-Stooges/dp/B000003JFN'
            @gift_img  = 'Iggy-The-Stooges-Im-Sick-Of-You.jpg'
          end
        else
          if likes == 'animals'
            if significant_other == 'male'
              @gift_name = 'Sheep! Magazine'
              @gift_url  = 'http://www.amazon.com/Sheep-Magazine/dp/B00006KWTM/'
              @gift_img  = 'Sheep-Magazine.jpg'
            else # significant_other == 'female'
              @gift_name = 'Flattened Fauna, Revised: A Field Guide to Common Animals of Roads, Streets, and Highways'
              @gift_url  = 'http://www.amazon.com/Flattened-Fauna-Revised-Animals-Highways'
              @gift_img  = 'Flattened-Fauna.jpg'
            end
          else
            if likes == 'sports'
              if significant_other == 'male'
                @gift_name = 'Anger Management For Dummies'
                @gift_url  = 'http://www.amazon.com/Anger-Management-Dummies-Doyle-Gentry/'
                @gift_img  = 'Anger-Management-For-Dummies.png'
              else # significant_other == 'female'
                @gift_name = 'Scale plus Body Fat Monitor Duo'
                @gift_url  = 'http://www.amazon.com/Tanita-BF680W-Scale-Monitor-Athletic/dp/B0009V1YPU/'
                @gift_img  = 'Scale-Plus-Body-Fat-Monitor.jpg'
              end
            end
          end
        end
      end
    end
  end

  erb :result

end