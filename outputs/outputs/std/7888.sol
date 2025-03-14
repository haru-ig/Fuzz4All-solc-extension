pragma solidity ^0.8.0;
contract Math_2 {
    function squareRoot(uint a) public returns (uint) { return ((a % 2) == 0)? a / 2 : a * 3 + 1; }
    function modularExponentiation(uint p, uint n, uint m) public returns (uint) { return (m == 0)? 1 : modularExponentiation(p, n / m, n % m); }
    function fibonacci(uint a) public virtual returns (uint) { if (a <= 2) return 1; return fibonacci(a - 1) + fibonacci(a - 2); }

    function pow2(uint n) public returns (uint256) { return (n == 0)? 1 : 2 ** (uint256(n) * 2); }

    function log2(uint256 b) public returns (uint) { if (b == 0) throw; else return (log2(b) / 2); }


    function subtract(uint256 a, uint256 b) public returns (uint256) { return a - b;
    }
}
