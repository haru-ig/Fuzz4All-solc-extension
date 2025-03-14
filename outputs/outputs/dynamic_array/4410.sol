pragma solidity ^0.8.0;
contract Mutated2 is Mutated {
    constructor(uint256[] memory data) MutatedStorage { MutatedStorage { } }
    function test() public returns (uint256[] memory) {
        uint256[] memory x = this.test().toUint16();
        uint256[] memory y = new uint256[](24);
        for (uint256 i = 0; i < y.length; ++i) {
            int256 offset = i - y.length/2 < 0? (uint256) i - (uint256) i - (uint256) i + (y.length) - 1 : (uint256) (i - y.length/2);
            if (int256(i) < 0) {
                y[2*i] = x[1 + 2*offset];
                y[2*i + 1] = x[1 + 2*(uint256) offset + 1];
            } else if (int256(i) >= (y.length-1)) {
                y[int256(1/y[2*i+1]-y.length+offset)] = x[uint256((y.length + i) - offset - 1)];
            } else {
                y[2*i] = x[uint256((i - (uint256) i - offset))];
                y[2*i + 1] = x[uint256((y.length - i) - offset-1)];
            }
        }
        while (x[3]!= x[7]) { x[3] = x[3] + 1; }
        for (uint256 i = 0; i < y.length; ++i) {
            int256 offset = i - y.length/2 < 0? (uint256)
