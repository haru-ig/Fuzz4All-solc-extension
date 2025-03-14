pragma solidity ^0.8.0;
contract modifierD{
    function f(uint x) public pure returns(uint) {
        return uint(uint(x) / 256);
    }
}
contract myContractD is modifierD
{
    function g(uint x) pure public returns (uint) {
        return uint(x) * 2;
    }
}
