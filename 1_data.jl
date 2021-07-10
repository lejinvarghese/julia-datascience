using BenchmarkTools
using DataFrames
using DelimitedFiles
using CSV
using XLSX
using Downloads

# downloading files

P = Downloads.download("https://raw.githubusercontent.com/nassarhuda/easy_data/master/programming_languages.csv",
    "data/programming_languages.csv")

matrix, header = readdlm("data/programming_languages.csv",',';header=true)
# writedlm("data/programminglanguages_dlm.txt", matrix, '-')

data = CSV.read("data/programming_languages.csv", DataFrame)

@show data[1:10,:]
@show names(data)
# @show typeof(data)
# @show data.year
@show describe(data)

# write a csv
# @btime CSV.write("data/programming_languages.csv", DataFrame(matrix, :auto))

G = XLSX.readtable("data/zillow_data_download_april2020.xlsx","Sale_counts_city")
data = DataFrame(G...)  #splat unwraps the array G[1], G[2]

@show data[1:10, 1:5]