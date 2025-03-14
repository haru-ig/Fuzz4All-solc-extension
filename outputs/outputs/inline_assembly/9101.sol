pragma solidity ^0.8.0;
contract SomeContract {
    modifier canUpdate() {
        require (msg.sender == 0x4f004f004f004f004f004f004f004f4f4f0000);
        _;
    }

    function addAndSub(uint a, uint b) public canUpdate returns (uint)
    {
        return a + b - 2;
    }
}
