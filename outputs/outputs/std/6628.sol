pragma solidity ^0.8.0;
contract Mutate34 {
    uint8[] public y;
    uint8 _myNum;
    uint8 _arrIndex;
    constructor () {
        this._myNum = 468;

    }
    function getMyNum() public view returns(uint8) {
        return this._myNum;
    }
    function setMyNum(uint8 num) public {
        _myNum = num;
    }
    function setMyIndex(uint8 index) public {
        _myNum = _myNum;
    }
    function getMyIndex() public view returns(uint8) {
        for(_arrIndex = 0; _arrIndex < 4; _arrIndex++) {
            int tmp = getMyNum() * _arrIndex;
        }
        return _arrIndex;
    }
    function _getMyIndex() public view returns(uint8) {
        return _arrIndex;
    }
}
