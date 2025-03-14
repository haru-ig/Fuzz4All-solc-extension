pragma solidity ^0.8.0;
contract SemanticallyEquivalent3 {
  constructor () {
    uint256 x = constantValue;
  }
  function x() view public returns (uint) {
    uint256 x = constantValue;
    int num1 = 9;
    int num2 = 100;
    int num3 = 9;
    int num4 = 10;
    uint256 x1 = uint256(uint(uint256(-99999)/uint256(-99999))+ uint(65055* 1606069 /2895879));
    uint256 x2 = uint256(uint(uint256(-39)*1606069 /2895879))+ uint(65055*(9312690*1988017*321629));
    uint256 x3 = uint256(uint256(-99999))+uint(65055*( 321629*1606069)+1395) ;
    uint x4 = uint256(uint256(-99999))+ uint(321629*1606069)+ uint(9312690*1988017*321629) ;
    num1 = num1 +  -x1;
    num2 = num2 -  -x2;
    num3 = num3 *  x3;
    num4 +=  x4;
    return num1;
  }
  uint constant constantValue = 1000;
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent2 {
  constructor () {}
  function x() view public returns (uint) {
    uint256 y;
    uint256 y1;
    y1 = constantValue;
    int num1 = 9;
    int num2 = 100;
