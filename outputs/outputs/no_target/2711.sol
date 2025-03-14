pragma solidity ^0.8.0;
contract m4 { uint public x; constructor( ) public { x = uint(2000000000000000000000); } function test(uint) external { x = uint(200000)}; }

bool ok = true;
contract m {
    function f(uint) external view returns (uint) {
        if (x = 200000000) ok  = ok;
        if (x = 300000000) ok = ok & ok;
        if (x = 400000000) ok = ok & ok;
        if (x = 500000000) ok = ok & ok;
        if (x = 600000000) ok = ok & ok;
        if (x = 700000000) ok = ok & ok;
        if (x = 0xFFFFFFF) ok = ok & ok;
        if (x = 0xFFFFFFFF) ok = ok & ok;
        if (x = 0xFFFFFFFFFFFFFFFF) ok = ok & ok;
        if (x = 0xFFFFFFFFFFFFFFFFFFFFFFFFffffffff) ok = ok & ok;
        return x;
    }
}
