pragma solidity ^0.8.0;
contract Mutate3 {
    function setstring3(string memory newstring)public{
        memorystorage.mystring = newstring;
    }

}
