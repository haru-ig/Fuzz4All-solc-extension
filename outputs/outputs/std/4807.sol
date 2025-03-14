pragma solidity ^0.8.0;
contract newH {
  uint public x;
  uint public y;
  function h() public pure returns (uint z) {
    if (x > 10) z = 10;
    else if (y > 0) z = log2(x, y);
  }
  function test2() public pure returns (uint z) {
    x = 10;
    y = 0;
    if (x > 10) z = 10;
    else if (y > 0) z = log2(x, y);
  }
}

pragma solidity ^0.8.0;
contract newH2 {
  uint public x;
  uint public y;
  function h() public pure returns (uint z) {
    if (x > 3 & x > 10 & y > 1 & y > 0) z = 10;
    else if (y > 0) z = log2(x, y);
  }
  function test2() public pure returns (uint z) {
    x = 10;
    y = 0;
    if (x > 3 & x > 10 & y > 1 & y > 0) z = 10;
    else if (y > 0) z = log2(x, y);
  }
}
