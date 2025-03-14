pragma solidity ^0.8.0;
library lib
{

struct MyStruct
{
    uint num;
}

MyStruct[] internal arr;

constructor()
{
    MyStruct memory myStruct = MyStruct(234567);
    arr.push(myStruct);
}

function getStruct() constant returns(uint)
{
    return arr[1].num;
}

}
