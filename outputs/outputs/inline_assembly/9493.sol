pragma solidity ^0.8.0;
contract MyContract {
    address public contractAddress;
    uint16 public balance = 0;
    event ContractCreated(address _address);
    event BalanceChanged(address _address, uint _amount);
    constructor() {
       contractAddress = address(this);
    }
    function increase(uint _amount) public {
   uint counter = 0;
    for(;counter < _amount;counter++){

        if(counter == 10) {
            uint16 x = balance + _amount;
           uint16 x1 = balance / _amount;
        }
        if(counter == 11) {
            uint16 y = balance + _amount;
            uint x = x + _amount;
        }

        counter +=1;
    }
        balance += _amount;
        emit BalanceChanged(contractAddress, _amount);
    }
}
