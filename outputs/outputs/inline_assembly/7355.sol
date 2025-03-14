pragma solidity ^0.8.0;
contract Same_program_without_inline {
 uint constant constant1 = 10;
 uint constant constant2 = 11;
 uint constant constant3 = 12;
 uint constant constant4 = 13;
}
contract Inlined_ASMs {
  function getConstant() public view returns (uint) {
    uint constant constant = constant1 + constant2 + constant3 + constant4;
    uint constant constant1 = 20;
    uint constant constant2 = 21;
    uint constant constant = constant1 + constant2;
    uint constant constant1 = 125;
    uint constant constant3 = (constant1 * constant1);
    uint constant constant3 = 20 + (constant3 * (4 * constant2) * (constant3 * constant1) * 8);
    uint constant constant3 = (10 + (20 + (constant1 + constant4)) * (100 + 300) *
    (constant2 + constant3) * (6 * 3 + 27 * 5 + 2 * 7) *
    (2 ^ constant1 + constant3) * 100 * 200);
    return constant3;
  }
  function getTwoConstants1() public view returns (uint, uint) {
    uint constant constant1 = 20;
    uint constant constant2 = 21;
    uint constant constant = constant1 + constant2;
    uint constant constant1 = 125;
    uint constant constant2 = (constant1 * constant1);
    uint constant constant2 = 20 +
    (constant2 * (3 * constant) * (6 ^ constant1 * constant + constant1 * (2 ^ constant2 * 2 + constant2 * 5)) *
    2);
    uint constant constant3 = (constant1 + constant1 * constant2);
    uint constant constant = constant2 + constant3;
    uint constant constant1 = 125;
    uint constant constant2 = (constant1 * constant1);
    uint constant constant = constant1 * (constant2 * constant2);
    uint constant constant1 = 125;
    uint constant constant2 = (constant1 * constant1);
    uint constant constant4 = constant2 + constant1;
    uint constant constant4 = constant1 + ((constant2 * constant1) + (constant3 - constant4)) / (2 * constant);
    return (constant, constant4);
  }

}
