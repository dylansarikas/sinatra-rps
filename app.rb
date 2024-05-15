require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:rules)
end

get("/rock") do
  moves = ["rock", "paper", "scissors"]

  @computer = moves.sample

  if @computer == "paper"
    @output = "lost"
  elsif @computer == "scissors"
    @output = "won"
  else
    @output = "tied"
  end

  erb(:rock)
end

get ("/paper") do
  moves = ["rock", "paper", "scissors"]

  @computer = moves.sample

  if @computer == "paper"
    @output = "tied"
  elsif @computer == "scissors"
    @output = "lost"
  else
    @output = "won"
  end

  erb(:paper)
end

get ("/scissors") do
  moves = ["rock", "paper", "scissors"]

  @computer = moves.sample

  if @computer == "paper"
    @output = "won"
  elsif @computer == "scissors"
    @output = "tied"
  else
    @output = "lost"
  end

  erb(:scissors)
end
