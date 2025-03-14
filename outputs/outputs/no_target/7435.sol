pragma solidity ^0.8.0;
message InvalidOperation_Test {
  fallback () external { }
}
contract Test {
  uint256 public constant constant1 = 1.0;
  uint256 constant constant1_5 = 1.5;
  uint256 public constant constant10div1_5 = 10 / 15;
  uint256 constant constant11111111111111111111 = 1.0e256;

  uint256 public constant constantNonExistent = 9.1;
  uint256[] public constant array1 = [1, 3];
  uint256[] public constant array1NotConstant;
  uint256[] public constant array2 = [11, 13];
  uint256[] public constant array3;
  uint256[] public constant array4;
  uint256[] public constant array5;
  uint256 public constant constantArray23;

  uint256 public constant constant2 = 1.0;
  uint256 public constant constant6;
  uint256 public constant constant19;

  uint256 public constant constantNonStrict_1 = 1.0;
  uint256 public constant constantNonStrict_2 = 100;
  uint256 public constant constantNonStrict_3 = 100;

  uint256 public constant constantNonExistent_1 = 100;
  uint256 constant constantNonExistent_2 = 100;

  uint256 constant constantNonExistent_3 = 100;
  uint256 constant constantNonExistent_3_2 = 100000;
  uint256 constant constantNonExistent_4 = 100000;
  uint256 constant constantNonExistent_5 = 10;
  uint256 constant constantNonExistent_6 = 110;
  uint256 public constant constantNonExistent_7 = 1;
  uint256 constant constantNonExistent_8 = 2;

  uint256 public constant constantExistent_1 = 1;
  uint256 constant constantExistent_2 = 2;
  uint256 constant constantExistent_5 = 5;

  function test1() public pure returns(uint256) {
    function call2() public pure returns(uint256) {
      uint256 add = constant1 + constant1_5;
      uint256 sub
