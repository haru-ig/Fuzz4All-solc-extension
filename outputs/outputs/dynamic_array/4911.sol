pragma solidity ^0.8.0;
contract E66 {
    struct State {
        uint64 x;
    }
    function foo(uint64[] memory x) public {
        uint64[64] memory y;
        x[0]=64;
    }
}

pragma solidity ^0.8.0;
contract Test67 {
    struct Struct { uint x; }
    function foo(uint64[] memory x) public {
        uint64[227+63] memory y;
        for (uint i = 1; i<227+63; i++) {
            if (2 << (i-1) == x[i-1]) {
                y[i] = x[i];
            }
        }
        y[227+64]=x[x.length-1];
    }
}
contract E67 {
    struct Struct { uint public x; }
    function foo(uint64[] memory x) public {
        uint64[227+63] memory y;
        for (uint i = 1; i<227+63; i++) {
            if (2 << (i-1) == x[i-1]) {
                y[i] = x[i];
            }
        }
        y[227+64]=x[x.length-1];
    }
}
