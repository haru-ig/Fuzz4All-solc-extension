pragma solidity ^0.8.0;
contract MutantArithmatic54
{
    uint8[] x;
    uint32[10] j;
}

contract MutantArithmatic57
{
    uint256 public numberOfBytes;
    struct State {
        uint256 counter;
        uint8[100] nextBytes;
    }
    address public owner;
    uint256 public total;
    State[] public array;
    event OnLog(address indexed logTarget, uint indexed arrayIndex, uint indexed arrayLength, uint counter);
    constructor() public {
        owner = msg.sender;
        total = 0;
        numberOfBytes = 100;
    }

    function setNumberOfBytes(uint256 numberOfBytes_) public {
        numberOfBytes = numberOfBytes_;
        emit OnLog(msg.sender, 0, 0, total);
    }

    function setArrayAsUint256(uint256[100] memory array_) public {
        array[0].counter = 0;
        array[0].nextBytes = array_;
        emit OnLog(msg.sender, 0, 0, total);
    }

    function setArrayAsString(uint8[] memory array_) public {
        array[0].counter = 0;
        array[0].nextBytes = array_;
        emit OnLog(msg.sender, 0, 0, total);
    }

    function setArrayAsUint32(uint32[10] memory array_) public {
        array[0].counter = 0;
        array[0].nextBytes = array_;
        emit OnLog(msg.sender, 0, 0, total);
    }

    function setArrayAsUint256AndReturnIndex(uint256[10] memory array_) public {
        array[0].counter = 0;
        uint256 index = 0;
        for (uint256 i = 0; i < array_.length; i++) {
            array[0].nextBytes[i] = array_[i];
            index++;
        }
        array[0].counter = index;
        emit OnLog(msg.sender, 0, 0, total);
    }

    function returnUint256(uint256 array_) public returns (uint256) {
        return array_;
    }

    function returnUint256FromGetter(uint8[] memory _array, uint256 _index) public returns (uint256) {
        return _array[_index];
    }

    function returnUInt256Sum() public returns
