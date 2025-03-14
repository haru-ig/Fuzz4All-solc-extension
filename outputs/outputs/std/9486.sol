pragma solidity ^0.8.0;
contract Mutate2 {
    string public mystring;
    function _mutate2(string memory newstring)internal{
        _assignStorage(newstring);
    }
    function setstring(string memory newstring)internal{
        mystring = newstring;
    }
}
