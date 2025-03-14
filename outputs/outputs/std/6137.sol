pragma solidity ^0.8.0;
contract Mutated {
    bool constant True = true;
    function foo() public pure returns (bool) {
        bool b = True;
        return b;
    }
}
