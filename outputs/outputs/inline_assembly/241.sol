pragma solidity ^0.8.0;
contract E1x
{
    mapping (address => uint) public funds;
    uint _x;
    constructor (uint _x) public {
        _x = _x;
        funds[msg.sender] = _x * 10;
    }
    function divideAndLog (uint _x) public returns (bool){
        uint x = 0; uint y_ = 0; uint z_ = 0; uint w_ = 0;
        if (_x >= 1e9) {
            return false;
        } else if (_x >= 1e7) {
            x = _x / 1e9;
            if (10 <= x) {
                return false;
            }
            y_ = _x % 1e9;
            z_ = 10;
            w_ = 0;
        } else if (_x >= 1e6) {
            x = _x / 1e7;
            if (10 <= x) {
                return false;
            }
            y_ = _x % 1e7;
            z_ = 10;
            w_ = 0;
        } else if (_x >= 1e5) {
            x = _x / 1e6;
            if (10 <= x) {
                return false;
            }
            y_ = _x % 1e6;
            z_ = 10;
            w_ = 0;
        } else if (_x >= 1e4) {
            x = _x / 1e5;
            if (10 <= x) {
                return false;
            }
            y_ = _x % 1e5;
            z_ = 10;
            w_ = 0;
        } else if (_x >= 1e3) {
            x = _x / 1e4;
            if (10 <= x) {
                return false;
            }
            y_ = _x % 1e4;
            z_ = 10;
            w_ = 0;
        } else if (_x >= 1e2) {
            x = _x / 1e3;
            if (10 <= x) {
                return false;
            }
            y_ = _x % 1e3;
            z_ = 10;
