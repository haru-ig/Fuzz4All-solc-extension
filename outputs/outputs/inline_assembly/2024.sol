pragma solidity ^0.8.0;
 contract NewY4{
    function add(uint256 a, uint256 b) internal pure returns (uint256 c) {
      c = a + b;
    }
    function add(uint256 a, uint256 b) external pure returns (uint256 c) {
      c = a + b;
    }
}







/* 6.) Always use a non empty modifier such as only require with msg.sender!= address
