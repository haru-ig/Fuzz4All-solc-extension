pragma solidity ^0.8.0;
contract Test7 {
    uint256 _value;
    uint[][] _mem;
    function f(uint y) public {
        delete _mem[0][y];
        delete _mem[y][10*y];
    }
    function bar(uint y) public {
        if(y == 0) {
            uint x;
            x[0] = 1;
            x[1] = 2;
        }
        if(y == 0){
            _mem = new uint256[10][0];
        }
    }
    function test() public {
        uint256[] memory bar = new uint256[](5);
        bar[0] = 1;
        bar[2] = 0;
    }
}
