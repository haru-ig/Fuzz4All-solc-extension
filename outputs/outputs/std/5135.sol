pragma solidity ^0.8.0;
contract Semantics4 {
    struct B {}
    function f<B>(uint a, bool inB, bytes memory c) public pure {
    }
}
