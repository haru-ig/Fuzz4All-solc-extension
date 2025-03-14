pragma solidity ^0.8.0;
contract C {
    function contractConstant102 {
        G constant c = G();
        H constant h = H();
        assert(G.value+h.value == uint(100000));
        assert(G.value + uint(1001) == 20000);
        assert(uint(G.value) == uint(100000));
        assert(uint(H.value) == uint(20000));
        assert(uint(0) == constantMax);
    }

    function contractConstant128 {
        assert(uint(maxUint) == uint(maxUint));
        assert(uint((constantMax + 1)) >= constantMax);
    }
}
