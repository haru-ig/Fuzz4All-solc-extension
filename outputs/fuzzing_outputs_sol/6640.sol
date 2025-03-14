pragma solidity ^0.8.0;
contract Caller {
    address _caller_ = msg.sender;

    function doCall() public {
        this.mutated();
    }
}
