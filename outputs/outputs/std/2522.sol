pragma solidity ^0.8.0;
contract HelloWorld {
    function hello() public pure returns (uint) {
        return 100;
    }
    function fact(uint64 n) public pure returns (uint) {
        uint r;
        assembly {
            r := mul(n, sub(1, n))
        }
        return r;
    }
    function factByOptimized(uint64 n) public pure returns (uint) {
        uint x;
        assembly {
            x := mul(mload(n), n)
        }
        return x;
    }
    function factByFallback(uint64 n) public pure returns (uint) {
        uint f = 100;
        while(n > 1) {
            n = div(n, 2);
            f = mul(f, 2);
        }
        return f;
    }
}
