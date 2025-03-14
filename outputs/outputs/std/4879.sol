pragma solidity ^0.8.0;
contract MutateWithMath {
    struct Test {
        uint[] array;
    }

    function f(uint[] memory v) public {
        uint len = v.length;
        uint i;
        modifier x(uint x) {
            x += 10;
            require(x < v.length);
        }

        modifier y(uint x) {
            x -= 10;
            require(x >= 0);
        }
        uint[] memory w;
        for (i = 1; i < 10; i++) {
            x(v.length);
        }
        for (i = 1; i < 10; i++) {
            y(v.length);
        }
        for (i = 0; i < len; i++) {
            uint val = v[i];
            w[i] = val + 1000;
        }
        for (i = 0; i < len; i++) {
            v[i] = w[i];
        }
        x(v.length);
    }
}
