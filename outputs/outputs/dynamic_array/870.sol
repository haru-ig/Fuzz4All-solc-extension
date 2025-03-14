pragma solidity ^0.8.0;
contract OriginalSolidity {
    uint constant x = 8500;
    function x() public pure returns (uint) {
  uint y=3*x;
        x = x + 150000;
        return y + 29;
    }
}
