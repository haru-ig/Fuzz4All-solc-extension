pragma solidity ^0.8.0;
contract D is D {
    uint public y;
    uint z = 2;
    uint public x;
    uint public r;
    uint public n;
    constructor() public {
        z = 1;
        x = x + 0;
        x = x - 16;
        n = r^z;
    }

    function set_x(uint _x) public {
      x = _x;
    }
    function set_n(uint _n) public {
      n = _n;
    }
    function set_r(uint _n) public {
      r = _n;
    }
    function getvalue() public view returns(uint) {
      uint _x = x + 1;
      uint _y = n + 16;
      uint r = 3;
      uint _n = 32;
      return (_x + _y + r + _n);
    }
}
