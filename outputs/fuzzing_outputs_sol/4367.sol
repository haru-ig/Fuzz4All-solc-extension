pragma solidity ^0.8.0;
contract Mutation {
    function f0() public {
        if (msg.data.length > 2) {
            _;
        }
    }
}
