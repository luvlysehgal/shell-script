#Here declaring a Associative array

declare -A birthOf92
declare -A birthOf93

#Here initialinzing both array.
for (( i=1;i<=12;i++ ))
do
   birthOf92[$i]=0
   birthOf93[$i]=0
done

#Individual born
for (( i=1;i<=50;i++ ))
do
   born=$((RANDOM%12+1))
   ((birthOf92[$born]++))
   born=$((RANDOM%12+1))
   ((birthOf93[$born]++))
done

echo "Total individual Born in 1992 are....."
for (( i=1;i<=12;i++ ))
do
   echo -n " ${birthOf92[$i]} "
done

echo "Total individual Born in 1993 are....."
for (( i=1;i<=12;i++ ))
do
   echo -n " ${birthOf93[$i]} "
done

for (( i=1;i<=12;i++ ))
do
   case $i in
    1)  month="Month of Januray";;
    2)  month="Month of Feburay";;
    3)  month="Month of March";;
    4)  month="Month of April";;
    5)  month="Month of May";;
    6)  month="Month of June";;
    7)  month="Month of July";;
    8)  month="Month of August";;
    9)  month="Month of September";;
    10)  month="Month of October";;
    11)  month="Month of November";;
    12)  month="Month of December";;
esac

    echo -e "$month ${birthOf92[$i]} ${birthOf93[$i]}"
done
