pragma solidity ^0.8.0;
contract Test17NoNested {
    uint[] memory _mem;
    function f() public {
        _mem[0] = 13;
        _mem[1] = 17;
    }
}
