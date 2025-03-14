pragma solidity ^0.8.0;
import "../Mutation.sol";
contract Multiprecision is Mutation{

  uint256 private _multiplier;
  modifier multi(uint256 a,uint256 b){
    _multiplier = a;
    uint256 a2 = _left / _left;
    return a2.mul(_right).mul(_multiplier).div(b);
  }
  function multiply(uint256 _left, uint256 _right) public multi(_left, _right) {
    memoryVar = _left * _right;
  }
}
