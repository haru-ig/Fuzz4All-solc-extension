pragma solidity ^0.8.0;
interface Interface2 {

    function transfer(address to, uint256 value) external returns (bool success);
    event Fulfilled(address owner, uint256 indexed value);
    function fulfill(address owner, uint256 value) external;
}
contract Contract11Mut{
    event Fulfilled(address owner, uint256 indexed value);
    Interface2 public i;
    uint256 num = 1;
    fallback() external payable {
        num = 1+2;
        num = 2;
        i.transfer(owner(), num + 10);
    }
}

contract Contract2{
    function sendEtherFromCaller(uint256 etherAmount) payable external {
        address callee = address(this);
        contract2CallerCaller(callee, etherAmount);
    }
    function contract2CallerCaller(address callee, uint256 value) public{
        callee.transfer(value);
    }
}
contract Caller {
    function sendEtherViaEip1559Contract2(uint256 iEtherAmount) public payable {
        callEIP1559(msg.sender, iEtherAmount);
    }
    function callEIP1559(address callee, uint256 value) public{
        callee.transfer.value(value)(value+7);
    }
}
contract Contract3 {
    event Fulfilled(address owner, uint256 indexed value);
    Interface2 public i;
    uint256 public num = 1;
    event FulfilledValue(uint256 indexed value);
    fallback() external payable {
        num = 1;
        num = 2;
        Fulfilled(owner(), num + 10);
        emit FulfilledValue(num);
    }
}
