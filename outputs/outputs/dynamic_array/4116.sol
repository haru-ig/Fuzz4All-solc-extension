pragma solidity ^0.8.0;
contract C {
    uint public c;
    uint public array[1];
    uint public d;
    function f() public {
        uint[] memory x = new uint[](2);
        uint i;
        for (i = 0; i < 3; i++) {
            uint a;
            a = array[1];
        }
    }
}
