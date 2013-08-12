#!/usr/bin/env ruby
# encoding: utf-8

require 'sinatra'

set :server, 'thin'

episode_file = File.join(File.dirname(__FILE__), "simpsons.txt")
episodes = File.open(episode_file, "r").each_line.to_a.shuffle

get '/' do
  return episodes.sample.strip
end
