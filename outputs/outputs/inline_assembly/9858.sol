pragma solidity ^0.8.0;
contract ImmutableDataXulMutantContract {
    constructor () {
    }
    mapping (address => bool) public immutable addresses;
    function g() public {
        bytes32 x;
        bytes32 y;
        assembly {
            y := "y"
            x := "x"
        }
        c();
    }
    function c() public pure {
    }
}
