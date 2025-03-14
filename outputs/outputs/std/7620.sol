pragma solidity ^0.8.0;
contract BetterCase8 {
    uint[5][5][5] public a;
    uint index = uint[5][5][5](0);
    uint i = uint(0);
    uint128 v = uint128(0);
    uint256 w = uint256(0);
    bytes43 p = bytes43(0);
    bytes2 b = bytes2(0);
    mapping(uint => uint) public x;
    constructor () {
        a[0][0][0] = uint(42);
    }
    function useless(uint[5][5][5] memory _a) public onlyForth() {
        a = _a;
    }
}
