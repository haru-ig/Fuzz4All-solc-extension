pragma solidity ^0.8.0;
contract Add {
    function f(uint a, uint b)
    internal
    pure
    returns (uint){
    uint ret = a + b;
    return ret;
}
    }
    contract Multiply {
    function f(uint c, uint b)
    internal
    pure
    returns (uint){
    uint ret = c * b;
    return ret;
}
    }
