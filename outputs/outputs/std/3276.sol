pragma solidity ^0.8.0;
contract Increment {
    function f(uint i)
    internal
    pure
    returns (uint){
    return i + 1;
}
    }
contract Increment_mutated {
    function f(uint i)
    internal
    pure
    returns (uint){
    return i + 2;
}
    }
