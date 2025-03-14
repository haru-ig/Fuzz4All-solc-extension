pragma solidity ^0.8.0;
contract Mutate2_mutated {
    string public mystring;
    function setstring2(string memory newstring)public{
        mystring = newstring;
    }
}
contract Mutated3 {
    string public mystring;
    function setstring3(string memory newstring)public{
        mystring = newstring;
    }
}
