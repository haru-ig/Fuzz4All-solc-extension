pragma solidity ^0.8.0;
contract myContractB {
    function f() pure public returns (uint x){
        uint x = y;
        return x;
    }
}
