pragma solidity ^0.8.0;
contract MutatedWithTimestamp {
    uint private _startAt;
    uint private _endAt;
    uint private _value;
    event Mutated(uint value, uint startTime, uint endTime);
    modifier always() {
        _startAt = block.timestamp;
        _value = msg.value;
        _endAt = block.timestamp;
        emit Mutated(_value, _startAt, _endAt);
        _;
    }

    function setValue(uint value) public always {
        require(block.timestamp < _endAt);
        _value = value;
    }
}
