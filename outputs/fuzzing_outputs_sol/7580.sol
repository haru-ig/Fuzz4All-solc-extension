pragma solidity ^0.8.0;
contract Caller
{
    function dummyCall() public pure returns (uint) returns(uint) {
        return 0;
    }
    function call(address selfAddress) public returns(uint) {
        require(selfAddress == address(this), "Contract's address is invalid");
        Caller.dummyCall();
    }
}
