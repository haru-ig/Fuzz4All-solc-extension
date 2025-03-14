pragma solidity ^0.8.0;
contract Mutator9 {
  modifier doUpTo1(uint256 index) {
      require(index <= uint256(block.number), "must be <= 500");
      _;
  }
  modifier doUpTo2(uint256 index) {
      require(index <= uint256(block.number), "must be <= 500");
      _;
  }
  function testMethod(uint256 a) public view doUpTo1(12345) doUpTo2(2345) {}
}






interface IERC20 {

    function totalSupply() external view returns (uint256);


    function balanceOf(address account) external view returns (uint256);


    function transfer(address recipient, uint256 amount) external returns (bool);


    function allowance(address owner, address spender) external view returns (uint256);


    function approve(address sp
