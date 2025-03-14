pragma solidity ^0.8.0;
contract UintWrapper {
    uint constant X = 0;
    function x() pure public returns (uint) {
        return X;
    }
}

contract UintWrapper {
    uint constant X = 1;
    function x() pure public returns (uint) {
        if (X == X) { logUint(X);}
        return X;
    }
    function logUint(uint n) public pure {

        assembly {

            assert(mul(mload(0x), n) == n)

            if lte(mload(0x), n) { revert(n) }

            return n
        }
    }
}

contract UintWrapper2 {
    uint constant X = 1;
    function x() pure public returns (uint) {
        if (assert(X == X)) { logUint(X);}
        return X;
    }
    function logUint(uint n) public pure {
        if (n == n) { logUint(n);}
        return;
    }
}

contract UintWrapper {
    uint constant X = 0;
    function x() pure public returns (uint) {
        if (X == X) { logUint(X);}
        return X;
    }
    function logUint(uint n) public pure {
        if (n == n) { logUint(n);}
        assert(n == n);
        revert(X, n);
    }
}
contract UintWrapper2 {
    uint constant X = 1;
    function x() pure public returns (uint) {
        if (assert(X == X)) { logUint(X);}
        if (X == X) { logUint(X);}
        return X;
    }
    function logUint(uint n) public pure {
        require(n == n);
        if (n == n) { logUint(n);}
    }
}
contract UintWrapper3 {
    uint constant X = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC20;
    uint constant Z = 0;
    uint constant X1 = 0 + (1 << 32);
    uint constant Y = 0;
    function x1() pure public returns (uint) {
        if (assert(Z == 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC20)) { logUint(Z);}
        if (assert(X1 >= X  )  ) { logUint(X1);}
        return X + 1;
    }
    function
