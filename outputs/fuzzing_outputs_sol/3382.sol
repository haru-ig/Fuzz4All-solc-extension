pragma solidity ^0.8.0;
contract D {
    function fallback() public pure {
        selfdestruct(msg.sender);
    }
}
