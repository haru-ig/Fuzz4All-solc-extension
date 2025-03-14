pragma solidity ^0.8.0;
contract MyContract {
    event ContractCreated(address _address);
    event BalanceChanged(address _address, uint _amount);
    function isLessThanOrEqualTo(uint _lowerLimit, uint _amount, uint _upperLimit)
        private pure returns (bool)
    {
        return _lowerLimit <= _amount && _amount <= _upperLimit;
    }
    function increase(uint _amount) public {
        require(isLessThanOrEqualTo(0, _amount, 100));
        balance += _amount;
        emit BalanceChanged(address(this), _amount);
    }
}











contract MyContract {
    event ContractCreated(address _address);
    event BalanceChanged(address _address, uint _amount);
    function isLessThanOrEqualTo(uint _lowerLimit, uint _amount, uint _upperLimit)
        private pure returns (bool)
    {
        return _lowerLimit <= _amount && _amount <= _upperLimit;
    }
    function increase(uint _amount) public {
        require(isLessThanOrEqualTo(200, _amount, 999));
        balance += _amount;
        emit BalanceChanged(msg.sender, _amount);
    }
}
