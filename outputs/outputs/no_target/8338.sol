pragma solidity ^0.8.0;
contract Revert {
    function method() public pure {
        require(false);
        revert("test", "");
    }
}
