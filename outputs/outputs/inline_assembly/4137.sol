pragma solidity ^0.8.0;
contract Mutators {
    uint constant x1 = 1;
    uint constant x2 = 2;
    uint constant y = 1;
    function test () public {
        assembly {
            let x := x1
            mstore(1, x1)
            x := x1
            mstore(1, x2)
            x := x2
            mstore(1, 0)
        }
    }
}
