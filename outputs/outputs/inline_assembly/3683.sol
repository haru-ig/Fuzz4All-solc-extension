pragma solidity ^0.8.0;
contract ReturnsAnotherFunction {
  uint256 constant constantValue = 61;
  uint256 private g;
  uint256 private last_g;
  function changeFirstGeneCount(uint256 _g) public returns (uint256 _change) {
    last_g = last_g + 1;
    g = last_g - 100;
    _change = last_g - g + constantValue;
  }
  function getFirstGeneCount(uint256 _g1) public view returns (uint256 _first) {
    return g + constantValue;
  }
  function getSecondGeneCount() public view returns (uint256 _second) {
    return g;
  }
}

pragma solidity ^0.8.0;
contract ReturnsAnotherFunction {
  uint256 constant constantValue = 125;
  uint256 private g;
  uint256 private next_g;

  uint256 private _last_g;
  function changeFirstGeneCount(uint256 _g) public returns (uint256 _change) {
    g = _g - 100;

    next_g = next_g - 1;


    _change = g + constantValue;
  }
  function update() public view returns (uint256 _value) {
    return g + constantValue;
  }
  function getFirstGeneCount(uint256 _g1) public view returns (uint256 _first) {
    return g + constantValue;
  }
  function getLastGeneCount() public view returns (uint256 _last) {
    return last_g;
  }
  function getNextGeneCount() public view returns (uint256 _next) {
    return next_g;
  }
}



contract Fibonacci {
    uint256 private _previous;
    mapping (address => uint256) private _history;

    function fib
