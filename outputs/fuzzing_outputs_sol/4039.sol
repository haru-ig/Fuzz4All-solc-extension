pragma solidity ^0.8.0;
contract Mutation1 {
  uint fallback_called = 0;
  function myF(uint256 _i) public {
    fallback_called = _i;
  }
  function myFallback() public pure returns (uint256) {
    return 1;
  }
}
contract Mutation2 {
  uint fallback_called = 0;
  function myF(uint256 _i) public {
    fallback_called = _i;
  }
  function myFallback() public pure returns (uint256) {
    fallback_called += 1;
    return this.myF(fallback_called);
  }
}
contract Mutation3 {
  uint fallback_called = 0;
  function myF(uint256 _i) public {
    fallback_called = _i;
  }
  function myFallback() public pure returns (uint256) {
    return this.myF(1);
  }
}
contract Mutation4 {
  uint fallback_called = 0;
  function myF(uint256 _i) public {
    fallback_called = _i;
  }
  function myFallback() public pure returns (uint256) {
    fallback_called += 1;
    return this.myF(fallback_called);
  }
  function myFallbackReturn(uint256 _i) public pure returns (uint256) {
    fallback_called = _i;
    return 1;
  }
  function myFallbackReturn2() public pure returns (uint256) {
    fallback_called += 1;
    return this.myF(fallback_called);
  }
}
contract Mutation5 {
  uint fallback_called = 0;
  function myF(uint256 _i) public {
    fallback_called = _i;
  }
  function myFallback() public pure returns (uint256) {
    fallback_called += 1;
    return this.myF(fallback_called);
  }
}
contract Mutation6 {
  function myF(uint256 _i) public pure returns (uint256) {
    return _i + _i;
  }
  function myFallbackReturn(uint256 _i) public pure returns (uint256) {
    return this.myF(1) - _i;
  }
  function myFallbackReturn2() public pure returns (uint256) {
    return this.myF(1) + 1;
  }
  function myFallbackCall() public pure returns (uint256) {
    return this.myF(1) + fallback();
  }
}

contract MutantFallbackInterface {
  function myF(uint _i) public pure {
    emit myF(_i);
  }
  function myFallback() public pure returns (uint) {
    emit myFallback();
    return 1;
  }
}
contract MutantFallbackInterface2 {
  function myF(uint _i) public pure {
    emit myF(_i);
  }
  function myFallback() public pure returns (uint
