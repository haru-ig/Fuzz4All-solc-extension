pragma solidity ^0.8.0;
contract S {
    function callBack(uint256) public pure {
        revert("test");
    }
}
