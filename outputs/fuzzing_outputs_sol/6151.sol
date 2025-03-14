pragma solidity ^0.8.0;
contract MyEther {
    bytes32 immutable _contractAddress = "0x5855fEE368336C90E23A5aD9eB6662d7F2575029";
    address admin;
    constructor() public {
        admin = msg.sender;
        require(msg.sender == admin, "Caller is not admin, abort!");
    }
    function test() public payable {}
}
