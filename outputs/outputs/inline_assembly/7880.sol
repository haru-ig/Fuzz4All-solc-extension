pragma solidity ^0.8.0;
contract L44 {
    int x;
    constructor() {
        x = 5;
    }
    modifier modifyCalled {
        x = x + 1;
        x = x + 2;
        _;
    }
    function use() public modifyCalled {
        x = 100;
    }
}
contract L45
{
  enum Color { Red, Blue }
  uint x;
  constructor (Color color) {
      x = uint(color);
  }
}
assembly {

    contract L46 {
      uint x ;
      constructor () {
        x = 1;
      }
      function use() {
        x = 7;
      }
    }
}
