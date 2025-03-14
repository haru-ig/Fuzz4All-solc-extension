pragma solidity ^0.8.0;
contract Test831B {
    uint8[][] memory x = new uint8[][][](2);
    function test() public payable {
        x[0][0] = new uint8[](0x10);
        uint8 a = x[0][0].length;
        a = x[1].x(10);
    }
    function x(uint8 c) public pure returns (uint8 y) {
        y = c;
    }
}
