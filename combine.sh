echo "combine files"

#for file in *.txt
for file in "$@"  #this $@ takes all the input variables
do
cat header.txt "$file" > processed/"$file"
cd processed
echo "$file"
python gene_reading.py $file 
cd ..
done
echo "done"
