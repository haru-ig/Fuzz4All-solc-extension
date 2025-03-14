pragma solidity ^0.8.0;
contract OptimizelyExample105cSynthetic {
    uint public x;
    function test___infeasible( ) public {
        x += 0x1000000;
    }
    function test___infeasible2( ) public {
        x = byte(0);
    }
    function test___infeasible3( ) public {
        x--;
    }
    function test___infeasible4( ) public {
        x <<= 0x10000000000000000000000000000000;
    }
}
