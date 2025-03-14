pragma solidity ^0.8.0;
contract Caller {
    uint public storage_value;
    constructor() {
        storage_value = address(this).balance;
    }
    function callWithEther() public payable {
        storage_value = msg.value;
    }
    function callWithReceive() public pure returns (uint){
        return address(this).balance;
    }
}
