pragma solidity ^0.8.0;
contract A {
    uint constant a = 1;
    uint constant b = 1;
    uint constant c = 1;
    uint constant d = 1;
    uint constant e = 1;
    uint constant f = 1;
    uint constant g = 1;
    uint constant h = 1;
    uint constant i = 1;
    uint constant j = 1;
    uint constant k = 1;
    uint constant l = 1;
    uint constant m = 1;
    uint constant n = 1;
    uint constant o = 1;
    uint constant p = 1;
    uint constant q = 1;
    uint constant r = 1;
    uint constant s = 1;
    uint constant t = 1;
    uint constant u = 1;
    uint constant v = 1;
    uint constant w = 1;
    uint constant x = 1;
    uint constant y = 1;
    uint constant z = 1;
}
contract B is A {
    mapping (address => uint) public accountBalance;
    address owner;
    function balanceOf(address account) public view returns (uint) {
        return accountBalance[account];
    }
    function transfer(address recipient, uint amount) public {
        require(amount <= balanceOf(msg.sender));
        accountBalance[msg.sender] -= amount;
        accountBalance[recipient] += amount;
    }
    function withdraw() public {
        address recipient = msg.sender;
        require((accountBalance[recipient] + 1000) > balanceOf(recipient));
        uint amount = balanceOf(recipient);
        if(amount <= 100) {
            if(balanceOf(crowdsaleManager) > 5000) {
                recipient.call{value: amount}() {
                accountBalance[crowdsaleManager] += amount;
            }
        } else {
            token.transfer(recipient, amount);
        }
    }
}
contract Cow is B {}
contract Token {
    function allowance(address owner, address spender) public view returns (uint);
