pragma solidity ^0.8.0;
contract MutationEquivalence39
{
    uint x;
    uint y;

    function add(uint n) public {
        x = n % 100 + 1;
        y = ((n % 100) + x) % 100 + 1;
        if (true) {
            y++;
        }
    }
}

pragma solidity ^0.8.0;
contract MutationEquivalence40
{
    uint x;
    function add() public {
        x = x + 1;
        if (true) {
            x += 42;
        }
    }
}
