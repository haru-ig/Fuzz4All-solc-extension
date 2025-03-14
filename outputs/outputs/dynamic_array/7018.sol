pragma solidity ^0.8.0;
contract Test74 {
        bytes32 constant foobar = keccak256("Foo");
        uint[] constant arr = [];
        uint public x = 5;
        constructor() public {
                arr[0] = 25;
        }
}
