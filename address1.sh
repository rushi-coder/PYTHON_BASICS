createBook()
{
    echo
        if [ -e  Addressbook1.txt ]
    then
        echo "Addressbook is already is exist...!"
    else
        touch Addressbook1.txt
        echo "Addressbook is created successfully...!"
    fi

}

insertBook()
{
    while true

    do
        echo "Enter your Full name:"
        read record
        if [ "$record" == "q" ]
        then
            break
        fi

        echo "$record">>Addressbook1.txt
        echo "Record inserted successfully...!"
        echo -e "\n"
            break
    done

}
displayData()
{
    echo 
        if [ ! -e Addressbook1.txt ]
        then
            echo "Addressbook is not exist"
        else
            cat Addressbook1.txt
            echo "Record display successfully..!"
        fi
}

searchBook()
{
    echo "Enter data you want to search:"
    read data

    if [-f Addressbook1.txt]
    then
    result=$(grep -i "$data" Addressbook1.txt)

        if ["$result"]
        then
            echo "$result"
            echo "found successfully.."
    
        else
            echo "Record not found"
        fi

    else
        echo "Record not found.."
    fi



}

while true
do
    echo "Welcome To Menu"
    echo "1.CreateBook "
    echo "2.insertBook"
    echo "3.displayData"
    echo "4.searchData"
    echo "5.exit"

    echo "Enter your choice:"
    read ch

    case "$ch" in
        1)createBook;;
        2)insertBook;;
        3)displayData;;
        4)searchBook;;
        5)exit;;

    esac
done