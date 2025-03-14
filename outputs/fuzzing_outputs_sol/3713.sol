pragma solidity ^0.8.0;
contract Example9 {
    function add(uint x, uint y) pure private returns (uint) {
        uint sum = 0;
        return x + y;
    }
}
contract Test {
    function test() public {
        Example8 example;
        example.add(5, 10);
        Example9 example2;
        uint x = 10;
        uint y = 15;
        example2.add(x, y);
    }
}
