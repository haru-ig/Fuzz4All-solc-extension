pragma solidity ^0.8.0;
contract MyContract {
    address public contractAddress;
    uint   public balance = 0;
    modifier onlyContract() {
        require(msg.sender == contractAddress);
        _;
    }
    function increase(uint _amount) onlyContract ifLessThan(0, _amount, 100) {
        balance += _amount;
    }
}
