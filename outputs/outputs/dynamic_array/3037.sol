pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentDynamicAraryMutation {
    uint[] public x;
    mapping(uint => uint) public y;
    function r() public pure returns (uint[] memory) {
        uint[] memory ret;
        ret.push(125);
        ret.length = 4;
        uint256 len = 3;
        ret[0] = ret[len];
        ret.push(125);
        ret.length;
    }
    constructor () public {
        x = new uint[](2);
        x[0] = x[1];
        x[1] = 10;
    }
    function r0() public view returns (uint[] memory) {
        uint[] memory ret;
        ret = r();
        uint256 len;
        return ret;
    }
    function g() public pure returns (uint) {
        uint ret;
        uint256 len = 3;
        ret = x[0];
        ret = x[len];
    }
    function m() public view returns (uint[] memory) {
        return x;
    }
    function b() public returns (uint[] memory) {
        uint[] memory ret;
        return ret;
    }
}
