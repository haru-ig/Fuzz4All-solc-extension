pragma solidity ^0.8.0;
contract MutationEquivalence41
{
    uint x;
    function add(uint n, uint m) public {
        x = 100 * (n % 10) + 10 * m % 10 + 1;
    }
}
contract MutationEquivalence45
{
    uint x;
    uint y;
    function g(uint n) public view {
        x = ((n + 1) / 5) ** 3 % 123 % 1000;
        y = (n / 10) + ((n % 10) + (3 * x) % 30);
    }
}

pragma solidity ^0.8.0;
contract MutationEquivalence42
{
    uint x;
    uint y;
    function z(uint n) public {
        x = (n + 1) + (n + 100 * (n + 10) % 10) * (n % 100) % 100000 % 100000;
        x = ((n + 1) + n ** 5) % 100000;
        y = ((n * 7) + (n ** 2) - 50 * (n * 8)) % 100000;
    }
}
