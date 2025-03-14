pragma solidity ^0.8.0;
contract Test17SemiEquivalent {
    uint[] public _mem;
    uint public length = 0;
    function f() public {
        _mem = new uint[](1);
        _mem[0] = 13;
        _mem[1] = 17;
    }
}
