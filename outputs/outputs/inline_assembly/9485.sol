pragma solidity ^0.8.0;
contract MyContract {
    contract private_contract1;
    contract private_contract2;

    address   public contractAddress;

    uint   private balance = 0;
    event ContractCreated(address _address);

    modifier onlyContract() {
        require(msg.sender == contractAddress);
        _;
    }

    modifier ifLessThan(uint _lowerLimit, uint _amount, uint _upperLimit) {
        require(_lowerLimit < _amount && _amount < _upperLimit);
        _;
    }


    constructor() {
        contractAddress = address(this);
    }


    fallback () payable {}
}
