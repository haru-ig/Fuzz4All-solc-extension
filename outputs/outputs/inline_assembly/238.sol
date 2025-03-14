pragma solidity ^0.8.0;
import './E1.sol';

  contract E2 {
    mapping(address => uint) public funds;
    uint _x;
    constructor (uint _x) public {
        _x = _x;
        funds[msg.sender] = _x * 10;
    }
    function divideAndLog (uint _x) public returns(bool) {
        uint y_ = funds[msg.sender]  / 10;
        if (y_ == 10) {
            funds[msg.sender] = 10;
        } else {
            funds[msg.sender] = y_ - 1;
        }
        return true;
    }
    receive () {
        money = msg.value;
        money -= 2000;
    }

    uint money = 0;
  }

  contract E3 {
    mapping (address => uint) public funds;
    uint _x;
    constructor (uint _x) public {
        _x = _x;
        funds[msg.sender] = _x * 10;
    }
    function divideAndLog (uint _x) public returns (bool) {
        uint y_ = 10;
        uint y = 0;
        if (_x < 1) {
            y_ = 2;
        } else if (_x % 1 == 0 && (_x / 1) % 1 == 0) {
            y_ = 2;
        } else { y_ += 1; }
        if (y_ >= 1 && y_ <= 5) {
            return true;
        }
        return false;
    }

    receive() {
        money += msg.value;
    }
    uint money = 0;

    }

  contract E5 {
    mapping (address => uint) public funds;
    uint _x;
    uint[] calldata values;
    constructor (uint _x) public {
        _x = _x;
        funds[msg.sender] = _x * 10;
    }
