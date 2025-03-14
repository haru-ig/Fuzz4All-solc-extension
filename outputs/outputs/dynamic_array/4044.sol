pragma solidity ^0.8.0;
contract C {
    event E (uint a, uint b, uint c);
    function f() public view {
        uint x = data2[data2.length - 1];
        uint y = data2.length % 2;
        uint z = data2[data2.length + 1];
        uint w = data2[data2.length - 2];
        emit E(x, y, z); emit E(x, w, data2.length / 2);
    }
}
