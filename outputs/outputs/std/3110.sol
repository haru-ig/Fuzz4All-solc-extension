pragma solidity ^0.8.0;
contract Array {
  function f(uint[] memory x) public pure {
    uint _max = Math.max(uint(0), uint(0), x[0]);
    uint _min = Math.min(uint(0), uint(0), x[0]);
    uint _sum = Math.sum(uint(0), uint(0), x[0]);
    uint[] memory y;
    y = x;
  }
}

pragma solidity ^0.8.0;
contract Array {
  function f(uint[] memory x) public pure {
    uint _max = Math.max(uint(0), uint(0), x.length);
    uint _min = Math.min(uint(0), uint(0), x[0]);
    uint _sum = Math.sum(uint(0), uint(0), x[0]);
    uint[16] memory y;
    y = x;
  }
}

pragma solidity ^0.8.0;
contract Array {
  function f(uint[] memory x) public pure {
    uint _max = Math.max(uint(0), uint(0), x.length);
    uint _min = Math.min(uint(0), uint(0), x.length);
    uint _sum = Math.sum(uint(0), uint(0), x.length);
    uint[64][64] memory y;
    y = x;
  }
}





pragma solidity ^0.8.0;
contract StateVariable {
  function f() public pure {
    uint _x1 = 2;
    uint[1] memory _x = _x1.mul(2).div(1).toUint1();
    uint[1] memory _y;
    uint[3] memory _z;
  }
}
