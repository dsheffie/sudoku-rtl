if [ ! -f ./simv ]; then
    make
fi

for f in puzzles/*.hex
do
     vsim -c tb_search +puz=$f -do "run -all"
done

