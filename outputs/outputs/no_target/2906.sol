pragma solidity ^0.8.0;
contract fourth{
    function f() public pure {
        assert(10 < msg.sender);
    }
}
