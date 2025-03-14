pragma solidity ^0.8.0;

import Mutate2_previous;
contract Mutate2 {
    string mystring;
    FunctionWithStorage functionWithStorage;
    function setstring()public{
        functionWithStorage.setstring1(mystring);
    }
}
