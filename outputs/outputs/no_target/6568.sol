pragma solidity ^0.8.0;
contract modifierR{
    function f(uint x) public view returns(uint){
        uint y = x / 256;
        return y;
    }
}
contract myContractR is modifierR
{
    function g(uint x) view public returns (uint) {
        return x * 256 + f(x);
    }
}
