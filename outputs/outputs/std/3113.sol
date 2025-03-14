pragma solidity ^0.8.0;
contract Array {
  function f(uint[] memory x) public pure returns (uint[] memory newArr) {
    newArr[0] = x[0];
  }
}

pragma solidity ^0.8.0;
contract Array {
  function f(uint[] memory x) public pure {
    uint[] memory y = _empty;
    y[0] = x[0];
  }

  function f2(uint[] memory x) public pure {
    uint[] memory y = _empty;
    y[0] = 0;
    y[1] = 0;
  }

  function f3(uint[] memory x) public pure {
    uint[] memory y = _empty;
    y[0] = 0;
    uint _index = 1;
    y[1] = 2;
  }

  function f4() public {
    uint[] memory x = _empty;
    x[0] = 0;
  }

  function f5() public pure {
    uint[] memory arr = _empty;
  }

  function f6(uint[] memory x) public pure {
    uint[] memory y = _slice(x, 0);
  }

  function f7(uint[] memory x) public pure {
    uint[] memory y = concat(x, _empty);
  }
}
