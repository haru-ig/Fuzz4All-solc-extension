pragma solidity ^0.8.0;
contract Mutator2 {
    uint256 balance;
    address owner;
    constructor () {
        balance = 1;
    }
    function mutator2() external {
        owner = _msgSender();
        balance++;
        owner.transfer(1);
    }
    function _msgSender() internal view returns (address) {
        return msg.sender;
    }
}
