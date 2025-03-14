pragma solidity ^0.8.0;

contract F {
  bytes[1][1] private _g;
  string[2] public g;
  function f() public {
    uint[2] memory x = new uint[](2);
    x[0]=9;
    x[1]=99;
    uint x_size = x.length;
    assembly {
      mstore(add(x, 1), 21)
    }
  }
}

contract F {
  bytes[1][1] private _g;
  string[2] public g;
  function f() public {
    uint[] memory x = new uint[](2);
    x.push(9);
    x.push(99);
    uint x_size = x.length;
    assembly {
      mstore(add(x, 1), 21)
    }
  }
}

contract F {
  bytes[1][2] private _g;
  string[2] public g;
  function f() public {
    uint16[2] memory x = new uint16[](2);
    x[0]=9;
    x[1]=99;
    uint64 x_size = x.length;
    assembly {
      mstore(add(x, 1), 21)
    }
  }
}

contract F {
  bytes[1][2] private _g;
  string[2] public g;
  function f() public {
    uint64[1][2] memory x = new uint64[1][2](2);
    x[0][0]=9;
    x[0][1]=99;
    uint x_size = x.length;
  }
}

contract F {
  bytes[1][2][2] private _g;
  string[2][2] public g;
  function f() public {
    uint256[2][2] memory x = new uint256[2][2](2);
    x[0][0]=9;
    x[0][1]=99;
    uint128 x_size = x.length;
    assembly {
      mstore(add(x, 1), 21)
    }
  }
}

contract F {
  bytes[1][2][2] private _g;
  string[2][2] public g;
  function f() public {
    uint256[2][2[2]](2) memory x = new uint256[2][2](2);
    x[0][0]=9;
    x[0][1]=99;
    uint x_size = x.length; @ openMap
  }
}
/**************DO NOT MODIFY CODE BE
