pragma solidity ^0.8.0;
contract R {
    function fallback() public pure {
        selfdestruct(msg.sender);
    }
}
contract S {
    function fallback() public pure {
        revert("test");
    }
}
