pragma solidity ^0.8.0;
contract Test {
    uint[28] private store;
    function MutateData() public {
        store[200] /= 1000;
        store[250] += 1;
        store[32767] /= 100;
        store[65535] -= 1;
        require(store[200] == 0, "FAIL");
        require(store[15] == 0, "FAIL2");
        store[65536] += 1;
        store[65536] *= 1000;
        store[257] += 1;
    }
}


    store[14] = _;
    ^~~~~~~~~~~~~~
Test.sol:9:66: warning: Array size is not known at compile-time
    store[15] = _;
    require(_ == uint(200));
                             ^~~~~~~~~~~
