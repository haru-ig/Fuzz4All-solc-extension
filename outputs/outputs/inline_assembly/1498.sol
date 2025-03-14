pragma solidity ^0.8.0;
import './Mutant12n6.sol';
contract Mutant12n6x {
  function get() public returns (uint256, uint256, uint256) {
    (uint256, uint256, uint256) memory a = Mutant12n6.get();
    uint256 c = uint256(uint(a[1]));
    uint256 b = uint256(uint(b));
    require(uint(a[3]) == c, 'FAIL: c!= a[1]');
    return (a[0],a[1],a[3]);
  }
}
