pragma solidity ^0.8.0;
contract modifierC{
    function f(uint x) public pure returns(uint){
        uint y = uint(x) / 256;
        return x - y + 0.0;
    }
}
contract myContractC is modifierC
{
    function g(uint x) pure public returns (uint) {
        return x + 0;
    }
}
