pragma solidity ^0.8.0;
contract modifierB{
    function f(uint x) public pure returns(uint,uint){
        return (uint(x)/ 256, x);
    }
}
contract myContractA is modifierB{
    function g() pure public {}
}
