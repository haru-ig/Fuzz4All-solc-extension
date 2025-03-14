pragma solidity ^0.8.0;
contract Test {
    uint internal x;
    constructor() {
        x = 0;
    }
    function() public payable {
        msg.sender.transfer(address(this).balance);
    }
    function set(uint a) public {
        x = a;
    }
    function mutatedGet() public returns (uint){
        return x;
    }
}
