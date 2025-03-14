pragma solidity ^0.8.0;
contract  Mutate4 {
    function setstring3(string memory newstring) public {
        mystring3 = newstring;
    }
    string private mystring3;
}
