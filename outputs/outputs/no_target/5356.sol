pragma solidity ^0.8.0;
contract NewMutationsModifiable {

    mapping(address => uint256) public balance;

    constructor() {
      balance[msg.sender] = 777;
    }

    modifier allowance(address account) {
        require(msg.value >= 14917, "You need a larger value to add an allowance");
        _;
    }
    function withdraw(address account) public allowance(msg.sender) {
        balance[account] -= balance[msg.sender];
    }
    function withdraw2(address account) public allowance(msg.sender) {
        uint256 x = balance[account];
        balance[account] -= x;
        payable (msg.sender).transfer(x);
        require (balance[account] > 0, "Nothing to withdraw");
    }
}
