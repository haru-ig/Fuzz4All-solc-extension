pragma solidity ^0.8.0;
contract Mutate1 {
    string public mystring;
    function modTest(string memory mymemory)public{
        setstring1(mymemory);
    }
    function setstring1(string memory newstring)public{
        mystring = newstring;
    }
}
