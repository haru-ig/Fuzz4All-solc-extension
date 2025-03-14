pragma solidity ^0.8.0;
contract MutatingContract
{
    function mutatedFunction()
        public
        pure
        returns (bool)
    {
        return false;
    }
}
