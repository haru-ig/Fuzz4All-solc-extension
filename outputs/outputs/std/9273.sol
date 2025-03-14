pragma solidity ^0.8.0;
contract Mutated
{
    function mutatedFunction()
        public
        pure
        returns (bool)
    {
        uint immutable uintNum = 7;
        uintNum.toString();
        uintNum.toHexString();
        uintNum.toUint();
        uintNum.toUin64();
        uintNum.toUint();
        uintNum.toBool();
    }
}
