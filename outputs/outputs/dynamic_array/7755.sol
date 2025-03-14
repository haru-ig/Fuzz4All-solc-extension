pragma solidity ^0.8.0;
contract Test6 {
    uint256[3] _mem;
    constructor(address a) public {
        _mem = [ 2, 3, 4 ];
    }
    function check() public {
        _mem[1] = 1;
        _mem[2] = 2;
        _mem[0] = 3;
        _mem[0] = 4;
    }
    function check2() public {
        _mem[2] = 3;
    }
}
