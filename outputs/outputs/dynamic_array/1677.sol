pragma solidity ^0.8.0;
contract MutatedDynamicArrays10 {
    uint256[] elements;
    constructor() public {
        elements = new uint256[](10);
    }
    function modify() public {
        elements[3]++;
    }
}







library Math {


  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    require(a!= 0);

    uint256 c = a + b;
    require(c >= a);

    return c;
  }


  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    return sub(a, b, "SafeMath: subtraction overflow");
  }


  function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
    require(b <= a);
    uint256 c = a - b;

    require(c >= a);

    return c;
  }


  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
