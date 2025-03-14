pragma solidity ^0.8.0;


contract Contract {
    uint internal _counter;
    uint internal _minValue;
    uint internal _increment;
    uint internal _maxValue;

    constructor(uint minValue, uint increment, uint maxValue) {
        _minValue = minValue;
        _increment = increment;
        _maxValue = maxValue;
    }

    function getCounter() public view returns (uint) {
        return _counter;
    }

    function increaseCounter() public returns (uint) {
        uint oldCounter = _counter;
        _counter = oldCounter + 1;
        return oldCounter;
    }

    function subtractCounter(uint valueToSubtract) public {
        require(
            _counter >= valueToSubtract,
            "Counter must be greater than valueToSubtract"
        );
        _counter = _counter - valueToSubtract;
    }

    function getValue() public view returns (uint) {
        return _counter;
    }

    function setCounter(uint newValue) public {
        uint currentValue = _counter;
        valueChanged(currentValue);
        _counter = newValue;
    }

    function getMinValue() public view returns (uint) {
        return _minValue;
    }

    function getValueWithMinMax(uint minValue, uint maxValue) public view returns (uint) {
        uint newValue = getValue();
        require(newValue >= minValue && newValue <= maxValue, "Number out of range");
        return newValue;
    }

    function getIncrement() public view returns (uint) {
        return _increment;
    }

    modifier restricted() {
        require(msg.sender == address(new MutatedContractV2),"Restricted!");
        _;
    }

    function valueChanged(uint oldResult) internal { }


    modifier whitelisted () {
        (,_ ) = whitelist(msg.sender);
        _;
    }

    function whitelist (address _addr) internal view returns (address, bool) {

        if (address(0xD2846bD55b6E0e6b0E59c17DB01F82E40978b8De)!= _addr)
            return (address(0xD2846bD55b6E0e6b0E59c17DB01F82E40978b8De), true);
        return (address(0x885180d55410ec55D217137D52cE676a8F
