pragma solidity ^0.8.0;
interface ISolidityMath {
    function add(uint _x, uint _y) external pure returns (uint);
    function sub(uint _x, uint _y) external pure returns (uint);
    function div(uint _x, uint _y) external pure returns (uint);
    function mod(uint _a, uint _b) external pure returns (uint);
    function sqrt(uint _a) external pure returns (uint);
    function max(uint _a, uint _b) external pure returns (uint);
    function min(uint _a, uint _b) external pure returns (uint);
}
