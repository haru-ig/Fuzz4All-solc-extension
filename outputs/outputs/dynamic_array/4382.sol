pragma solidity ^0.8.0;

contract C{
  bool private mocked = false;
constructor() {
    mocked = true;}

  function setMocked(bool _mockval) public {
    if (mocked) {delete this;}
    mocked = _mockval;
    if (mocked) {this; }
    }
}
