pragma solidity ^0.8.0;
contract Mutator3 {
    uint256 internal counter = 0;
    uint256 public amount;
    address payable public beneficiary;
    modifier modifier() public() {
        counter++;
        if (counter == 0) {
            if (msg.value > 0) {
                return;
            }
        }
        return;
    }
    constructor(address payable _beneficiary) {
        amount = 1;
        beneficiary = _beneficiary;
    }
    function setAmount(uint256 _amount) public modifier() {
        require(_amount > amount);
        address payable sender = msg.sender;
        beneficiary.transfer(_amount);
        amount = _amount;
        sender.transfer(msg.value);
    }
    receive() external payable {
        beneficiary.transfer(amount);
    }
}
