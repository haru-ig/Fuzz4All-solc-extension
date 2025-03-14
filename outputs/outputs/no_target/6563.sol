pragma solidity ^0.8.0;
contract modifierD {
    function f(uint) public pure returns(uint){
        uint y = uint(x) / 256;
        return y;
    }
}
contract myContractD is modifierD
{
    function g(uint) pure public returns (uint) {
        return x + 0.0;
    }
}
