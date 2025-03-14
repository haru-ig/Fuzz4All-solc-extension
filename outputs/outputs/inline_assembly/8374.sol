pragma solidity ^0.8.0;
contract SolveAssembly4 {
    uint public _x;
    uint public _y;

    function set(uint x, uint y) public {
        _x = x;
        _y = y;
    }

    function test() public pure returns(uint) {
        bool exists;
        uint z;
        (z, exists) = test();
        return exists? 0x123 : uint(^0);
    }
}
