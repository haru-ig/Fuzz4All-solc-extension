pragma solidity ^0.8.0;
contract A022 {
    using SafeMath for uint256;
    uint256 private immutable value;




    constructor(uint256 _value) {
        value = _value;
    }
    function f() public pure returns (uint256) {
      return value;
    }
}
