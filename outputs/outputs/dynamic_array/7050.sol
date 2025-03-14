pragma solidity ^0.8.0;
contract NoTest3 {
    mapping (uint8 => uint8) public data;
    uint8 public no;

    constructor () public
    {
      no = 1;
      data[10] = no;
    }

    function f() public
    {
      no++;
      try data.set(no, 2) {} catch ( ) {}
      data[2] = no;
    }
}
