echo enter the range
read range
echo n
read n
for i in $(seq $n $range); do
  echo $i
done


mkdir linux-files
grep -l linux * | xargs mv -t linux-files


for f in *;
do
  if [ -f "$f" ] && [ -x "$f" ]; then
    mv "$f" executables/
  fi
done


for f in *[A-Z]*
do
  if [ -f "$f" ]; then
      new_name=$(echo "$f"|tr 'A-Z' 'a-z')
      mv "$f" "$new_name"
  fi
done

