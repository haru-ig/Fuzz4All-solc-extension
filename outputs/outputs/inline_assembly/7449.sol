pragma solidity ^0.8.0;
contract Equivalent_contract15 {
    uint constant constant1 = 2;
    uint constant constant2 = 100;
    uint x;
    uint y;

    function createAndStoreX() public pure {
      (x,y) = (constant1 * constant1, x);
    }

    function getX() public view returns (uint,uint) {
      return (x,y);
    }

    function addY(uint _y) public pure returns (uint) {
      return constant2 + _y;
    }
}
