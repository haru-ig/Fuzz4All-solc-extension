pragma solidity ^0.8.0;

contract third2 {
    function f() public pure returns (bytes1) {
        return 1;
    }
    uint256 a;
}
  contract third1 is third2 { }
