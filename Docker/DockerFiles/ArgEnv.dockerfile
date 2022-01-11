FROM ubuntu
ARG store
RUN echo "available at building" $store 
ENV store=$store
CMD echo "available at running"  ${store}