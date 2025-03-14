pragma solidity ^0.8.0;
contract Mutate2 {
    function setstring(string memory newstring)public{
        mystring = newstring;
    }
    string public mystring;
}
