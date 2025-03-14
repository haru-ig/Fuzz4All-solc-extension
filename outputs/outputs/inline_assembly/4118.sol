pragma solidity ^0.8.0;
contract Mutator {
    uint x;
    Modifiers.test(x, _a);
    function f(){
        Assembly {
            sstore
            ltstore
        }
    }
}
