pragma solidity ^0.8.0;
contract Original
{
    function originalFunction()
        public
        pure
        returns (uint)
    {
        return 2;
    }
}
contract MutatedFunction
{
    function _mutated(uint _x)
        public
        pure
        returns (uint)
    {
        return 10 * _x;
    }

    function mutatedFunction()
        public
        pure
        returns (uint)
    {
        return _mutated(3.14);
    }
}
