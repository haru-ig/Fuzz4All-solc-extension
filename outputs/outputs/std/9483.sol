pragma solidity ^0.8.0;
contract Mutate {
    string public mystring;
    function setstring(string memory newstring)external{
        mystring = newstring;
    }
}
contract Mutated2 {
    string public mystring;
    function setstring2(string memory newstring)public{
        mystring = newstring;
    }
}
