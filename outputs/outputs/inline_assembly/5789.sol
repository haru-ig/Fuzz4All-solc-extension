pragma solidity ^0.8.0;
contract MutatedBlock2Mutation83 {
    uint constant ONE = 1;
    uint internal _var = 0;
    uint internal _another = 1;
    function test1() public returns (uint) {
        _var == _var*block.timestamp + ONE*_var*block.timestamp + ONE*_var*block.timestamp + ONE*_var*block.timestamp;
        return _var;
    }

    function test2() public returns (uint) {
        return _var;
    }
}

pragma solidity ^0.8.0;


library Wrappers {

  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + b;
    require(c >= a, "SafeMath: addition overflow");

    return c;
  }


  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    return sub(a, b, "SafeMath: subtraction overflow");
  }


  function sub(uint256 a
