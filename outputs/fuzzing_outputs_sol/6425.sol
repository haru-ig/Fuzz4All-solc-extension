pragma solidity ^0.8.0;
contract Caller {
    function callSender() public payable {
    address contractAddress = tx.origin;
    
    return (Caller(contractAddress));
    }
}
