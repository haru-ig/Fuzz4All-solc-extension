pragma solidity ^0.8.0;
contract E13
{
    function divideAndLog(uint _x) public {
        uint y_ = funds[msg.sender];
        if (_x == 0) {
            return;
        }
        for (uint i = 1; i <= _x; i++) {
            y_--;
            if (y_ == 0) {
                return;
            }
        }
        if (y_ == 0) {
            return;
        }
        funds[msg.sender] = y_;
    }
    mapping (address => uint) public funds;
    constructor (uint _a1, uint _a2) public{
        uint _x = (_a1 + _a2) / 10;
        _x = _x * 10;
        _test(_a1!= 0, _x);
        funds[msg.sender] = _x;
    }
    function _test(bool _cond, uint _v) internal {
        _cond;
        require(_cond);
        require(_v == 0);
    }



}
contract E12 {
    uint _x;
    constructor (uint _x) public {
        _x = _x;
        funds[msg.sender] = _x * 10;
    }
    function divideAndLog() public returns (bool){
        uint y_ = funds[msg.sender] / 10;
        if (y_ == 10) {
            funds[msg.sender] = 10;
        } else {
            funds[msg.sender] = y_ - 1;
        }
        return true;
    }
}
contract E13 {
    function divideAndLog(uint _x) public {
        uint y_ = funds[msg.sender];
        if (_x == 0) { return; }
        for (uint i = 0; i <= _x; i++) {
            y_--;
            if (y_ == 0) { return; }
        }
        if (y_ == 0) { return; }
        funds[msg.sender] = y_;
    }
    mapping (address => uint) public funds;
    constructor (uint _a1, uint _a2) public{
        uint _x
