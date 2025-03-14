pragma solidity ^0.8.0;
interface SemanticallyEquivalentInterface {
    function semanticallyDifferent1() external returns (uint);
    function semanticallyDifferent2() external returns (uint, uint);
    function semanticallyDifferent3() public returns (uint []);
    function semanticallyDifferent4() public returns (uint, uint[], uint[], uint, uint, uint[3], uint[], uint);
    function semanticallyDifferent5() public returns (uint, uint, uint, uint[8], uint[9], uint[10], uint[11], uint[12]);
}
