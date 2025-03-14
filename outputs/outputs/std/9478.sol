pragma solidity ^0.8.0;
contract Contract2{
    struct MyStruct{
        string internal mystring1 = "MyString1";
    }
    string internal mystring = "MyString";
    function setstring(string memory newstring)public{
        mystring = newstring;
    }
}
