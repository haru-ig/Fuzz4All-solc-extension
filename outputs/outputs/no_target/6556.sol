pragma solidity ^0.8.0;
contract modifierA{
    function f(uint x) public pure returns(uint){
        uint y = uint(x);
        return x - y;
    }
}
contract myContractA is modifierA
{
    function g(uint x) pure public returns (uint) {
        uint z;
        assembly{


            z := x + 0x0
        }
        return x - z;
    }
}
