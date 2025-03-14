pragma solidity ^0.8.0;
contract Solidity {
  uint256 public constant myConst = 77;
  uint256 public constant newV;
  uint256 public constant iMax;
  uint256 public constant c;
  uint256 public i;
  uint256 public d;
  function Solidity() {
    newV = newV + 1;
  }
  function modify() {
    i = i + 1;
    d = d + 2;

    c = newV + 1;
  }

  modifier limit(uint256 i) {
    if (i <= iMax) {
      _;
    } else {
      revert();
    }
  }

  constructor(uint256 max){
    newV = 9;
    iMax = max;
    c = 300;
  }

  function increase() public limit(i + 1) {
    i = i + 1;
  }

  function decrease() public limit(i - 1) {
    i = i - 1;
    d = d - 6;
  }
}
