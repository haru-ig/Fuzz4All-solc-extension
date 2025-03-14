pragma solidity ^0.8.0;
contract OxState {
    uint public x;
    mapping(uint => uint) public y;
    mapping(uint => uint) public z;
    constructor () public {
        uint[] memory z = new uint[](2);
        z[0] = z;
        uint[] memory z2 = new uint[](2);
        z2[0] = z;
    }


    function resize() public {
        uint[20000000] memory oxState;
    }
}
