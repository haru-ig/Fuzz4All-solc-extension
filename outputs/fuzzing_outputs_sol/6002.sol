pragma solidity ^0.8.0;
contract Caller {
    mapping(address=>uint) public balances;
    mapping(address=>uint) public sendCount;
    uint256 constant public BASE = (uint256)(keccak256(abi.encodePacked(0x01)));
    uint constant public THRESHOLD = 10**3;
    uint public nextToken;

    function send(address account) public payable {
        uint value = account.balance;
        uint total = sendCount[account];
        if(value < THRESHOLD) {
            balances[account] += value;
            accounts[account] = true;
        }
        tokens[nextToken++] = account;
        sendCount[account] += value;
        account.sendValue(value);
    }
    function() public payable {
        require(msg.value >= BASE, "send exceeds threshold");
        uint value = msg.value - BASE;
        uint total = sendCount[msg.sender];
        sendCount[msg.sender] = 0;
        uint fee = msg.value / 10;
        uint interest = value / 250;
        balances[msg.sender] -= value;
        tokens[nextToken++] = msg.sender;
        msg.sender.send(fee);
        msg.sender.send(interest);
    }
    receive() external payable {
    }
}
