FROM ruby:2.3.3
MAINTAINER Doli <doli@doli.us>



RUN git clone https://github.com/dolicoli/guess-the-number-sinatra.git var/www \
    && cd /var/www 

	RUN cd /var/www  && bundle install
RUN apt-get update
RUN gem install sinatra
RUN gem install sinatra-reloader
RUN gem install puma
	
EXPOSE 3000
WORKDIR /var/www
RUN cd /var/www 
CMD bundle exec rackup -p 3000 --host 0.0.0.0