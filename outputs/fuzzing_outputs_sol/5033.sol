pragma solidity ^0.8.0;
address A;
contract Mutated {
    function mutate() public pure {
        bytes storage s = A.storage;
        s[2] = 123;
    }
}
