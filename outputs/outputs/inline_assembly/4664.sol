pragma solidity ^0.8.0;
contract mutator84 {
    constructor() {

    function() {
    z = 2 * 2;

    } } }
pragma solidity ^0.8.0;
contract mutator85 {
    constructor(){

    function(){
    z * = 20;

    } } }
contract mutator86{
  uint z;
  function() external{
    z = 3;
  }
  function() external{
    z *= 7;
    z /= _mul(_mul(_mul(_mul(7, 2), 2)), 2);
    z %= _mul(_mul(_mul(_mul(_mul(_mul(_mul(_mul(_mul(_mul(_mul(_mul(_mul(_mul(7, 2), 2)), 2)), 2)), 2)), 2)), 2));
  }
uint8 _mul(uint x, uint y) internal pure returns (uint) {
  if (y==0) { return 0; }
  uint z = x * _mul(y, (y-1));
  return z / _mul(y, 2);
}
}
