pragma solidity ^0.8.0;
contract modifierD{
    function f(uint x) public pure returns(uint){
        uint y = uint(x / 256);
        return y;
    }
}
contract myContractD is modifierD
{
    function g(uint x) pure public returns (uint) {
        return x + uint(x / 256);
    }
}
