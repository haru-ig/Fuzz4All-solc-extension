pragma solidity ^0.8.0;
contract MutatedExampleContract {
    int x = 100;
    uint y = 10;
    uint z = 1;
    uint32 w;
    uint64 u;
    function test() public pure {
        w = x * y;
    }
}
