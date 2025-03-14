pragma solidity ^0.8.0;
contract modifierB{
    function f(uint x) public pure returns(uint){
        uint y = uint(x)/ 256;
        return x * 300 - y;
    }
}
contract myContractB is modifierB{
    function g(uint x) pure public returns (uint) {
        return x * 2500;
    }
}
contract myContractC is modifierB{
    function g(uint x) pure public returns (uint) {
        return x * 3000;
    }
}
