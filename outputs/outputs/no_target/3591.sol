pragma solidity ^0.8.0;
contract f315_0 {
    function s() public { emit Log(1); }
    struct Log {
      bool flag;
      constructor (bool _flag) { flag = _flag; }
    }
