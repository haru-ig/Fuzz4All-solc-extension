pragma solidity ^0.8.0;
contract modifierU{
    function f(uint x) public pure returns(uint){
        uint y = x / 256;
        return y;
    }
}
contract myContractU is modifierU
{
    function g(uint x) public returns (uint) {
        return x * 256 + f(x);
    }
}
