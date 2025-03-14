pragma solidity ^0.8.0;
contract MutatingContract_2
{
    function mutatedFunction()
        public
        pure
        returns (string memory)
    {
        bool b = true;
        (uint i) = (b);
        i = 2;
        return "test";
    }
}
