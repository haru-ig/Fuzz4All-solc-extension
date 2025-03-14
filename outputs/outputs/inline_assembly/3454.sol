pragma solidity ^0.8.0;
contract ChangeLecture1 {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    uint[] public _changedLectureValue;
    modifier onlySet(uint newValue) {
        assert(newValue!= ZERO);
        _;
    }
    function set (uint _value) public onlySet(_value) {
        _changedLectureValue.push(_value);
    }
    function getChangedEventArgs(uint i) public pure returns (uint) {
        return _changedLectureValue[i];
    }
}
contract ChangeLecture4 {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    uint[] public _changedLectureValue;
    uint[] public _lastChange;
    modifier onlySet(uint newValue) {
        assert(newValue!= ZERO);
        _;
    }
    function set (uint _value) public onlySet(_value) {
        _changedLectureValue.push(_value);
    }
    function getChangedEventArgs(uint i) public pure returns (uint) {
        return _changedLectureValue[i];
    }
    function getLastChange() public pure returns (uint) {
        return _lastChange[0];
    }
    function clearLastChange() public {
        _lastChange.push(ZERO);
    }
}
