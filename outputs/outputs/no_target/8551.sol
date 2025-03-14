pragma solidity ^0.8.0;
contract Reverted {
    function get(uint a, uint b) public view {
        require(b <= uint(10**20), "bad");

        revert("bad");
    }
}
