pragma solidity ^0.8.0;
contract modifierC{
    function f(uint x) public pure returns(uint){
        uint y = uint(x) / 256;
        return y;
    }
}
contract myContractC is modifierC
{
    function g(uint x) pure public returns (uint) {
        return x + 0.0;
    }
}
