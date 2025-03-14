pragma solidity ^0.8.0;
import "./Caller.sol";
contract Foo {
    constructor() {
        callCaller.add(x);
    }
    function x() public pure {
    }
    function callCaller() public {
        require(false, "message");
    }
}
