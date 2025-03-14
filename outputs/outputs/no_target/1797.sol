pragma solidity ^0.8.0;
contract Mutate7 {
    uint public _160max;
    uint private _2;
    uint private _b;
    uint public _c = 0;
    uint private _d;
    uint public _e;

    constructor() public {
        _b = 128;
        _c = 2 ** _b;
        _160max = (10 ** 160) - 1;
    }
  function setInt160(uint x) public {
      _e = 2 ** 160;
      _d = (x - 96) * _e + 3 - 96;
      _2 = (_d >> 2) + (0xd000) + (_d & 31);
      emit setInt160Int(int128int);
    }
    function set64(uint x) public {
        _160max = (10 ** 160) - 1;
        _e = 2 ** 64;
        _d = (x - 96) * _e + 3 - 96;
        _2 = (_d >> 2) + (0xd000) + (_d & 31);
        emit set6464(uint32);
    }
}
contract Mutate8 {
    uint public _160max;
    uint private _2;
    uint private _b;
    uint public _c = 0;
    uint private _d;
    uint public _e;

    constructor() public {
        _b = 128;
        _c = 2 ** _b;
        _160max = (10 ** 160) - 1;
    }
  function setInt160(uint x) public {
      _e = 2 ** 160;
      _d = (x - 96) * _e + 3;
      _2 = (_d >> 2) + (0xd000) + (_d & 31);
      emit setInt160Int(int128int);
    }
    function set64(uint x) public {
        _160max = (10 ** 160) - 1;
        _e = 2 ** 64;
        _d = (x * 16) - 8;
        _2 = (-8 * 0xd000) + (_d >> 2) + (_d & 31);
        emit set6464(uint32);
    }
}
