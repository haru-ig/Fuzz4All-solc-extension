pragma solidity ^0.8.0;
contract Lottery {
    mapping (address => uint) internal lotteries;
    address[] myAddresses;
    uint myAddressSize;

    constructor() public {
        lotteries[msg.sender] = 0;
        myAddresses.push(msg.sender);
        lotteries[address(this)] += 1;
        myAddressSize = myAddresses.length;
    }

    function addLottery() public payable {
        require(msg.value > 0 && msg.value % 5 == 0, "Sorry, please check your payments!");
        lotteries[msg.sender] += msg.value;
        myAddresses.push(msg.sender);
        lotteries[address(this)] += 1;
        myAddressSize = myAddresses.length;
    }
}
