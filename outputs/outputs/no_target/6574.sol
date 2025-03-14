pragma solidity ^0.8.0;
contract myContractX is modifierR{
    function f(uint x) public view returns(uint){
        uint y = x / 256;
        return y;
    }
    function g(uint x) view public returns(uint) {
        return x * 256 + f(x);
    }
}
