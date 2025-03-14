pragma solidity ^0.8.0;
contract Add {
    function f(uint a, uint b)
    internal
    pure
    returns (uint){
    for(uint i=0;i<a;i++){
        f(b);
    }
    return a + b;
}
    }
