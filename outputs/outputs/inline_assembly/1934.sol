pragma solidity ^0.8.0;
contract newY {
    uint256 public x = 123;
    uint256 public constant y = 60;
    modifier modifierFunction(){
    require(x == 123, 'function is broken');
    return;
  }
    function f() public returns(uint256) {
      uint256 z;
      while (x == 123) {
        x++;
        z = z + x + y;
      }
    }
}
