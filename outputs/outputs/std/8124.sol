pragma solidity ^0.8.0;
contract Update {
    uint _total = 0;
    constructor () {
        _total = 1000;
    }
    function update(uint _a) public {
        _total = _a;
    }
    function getResult() public view returns (uint) {
        return _total;
    }
}

pragma solidity ^0.8.0;
contract AddConstant {
    uint constant _initialAmount = 1000;
    uint _currentAmount;
    uint _initialConstant = _initialAmount;
    function update(uint _a) public {
        _currentAmount = _initialAmount;
    }
    function addAndReturn() public pure returns (uint) {
        return _currentAmount + _initialConstant;
    }
}


pragma solidity ^0.8.0;
contract Transfer {
    address _transferAddress;
    uint _initialValue;
    uint _finalValue;
    constructor (address _transferAddress, uint _initialValue) public {
        _finalValue = _initialValue;
        this._transferAddress = _transferAddress;
    }
    function transferValue(uint _value) public returns (uint) {
        if (keccak256(abi.encodePacked(_transferAddress, block.height)) == 0xcaac033e2db5cb04119f39b1753abda6ad00a9b8d91f9c42db19fd8685864205) {
            return _value - _finalValue;
        } else {
            return 0xfffffff - _finalValue;
        }
    }
}

pragma solidity ^0.8.0;
contract AddConstant {
    uint constant _initialAmount = 1000;
    uint _currentAmount;
    uint _initialConstant = _initialAmount;
    uint _newValue = 2000;

    function update(uint _a) public {
        _currentAmount = _newValue;
    }
    function addAndReturn() public pure returns (uint) {
        return _newValue + _currentAmount + _initialConstant;
    }
}
