pragma solidity ^0.8.0;
interface myInterface
{
    function f() public returns (uint256);
    function func() public;
}
contract someOtherY is myInterface {
    uint256 public x = 60;
    uint256 public constant y = 123;
    function f() public returns (uint256) {
      return x;
    }
    function func() public {
      uint256 z;
      while (x + y!= 123) {
        x++;
        x++;
        x++;
        x++;
        mstore(0, address(this));
      }
    }
}
