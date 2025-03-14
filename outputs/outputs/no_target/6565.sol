pragma solidity ^0.8.0;
contract modifierE{
    function f(uint x) public pure returns(uint){
        uint y = uint(x / 256);
        return y;
    }
}
contract myContractE is modifierE
{
    function g(uint x) pure public returns (uint y) {
        return uint(uint(x) / 256);
    }
}
