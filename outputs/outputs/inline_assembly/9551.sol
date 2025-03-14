pragma solidity ^0.8.0;
contract MyContract {
    mapping (string => uint) public balance;
    mapping (uint => bool) public isApproved;
    event Approval(address indexed from, address indexed spender, uint indexed value);
    modifier CanSetApprove(uint id, uint value) {
        require(isApproved[id] == false, 'AssertionFailed');
        require(msg.msgSender == block.coinbase, 'AssertionFailed');
        isApproved[id] = true;
        _;
    }
    function bar(uint id, uint value) public CanSetApprove(id, value) {
        balance[id] = balance[id] + value;
    }
}
