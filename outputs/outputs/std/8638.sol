pragma solidity ^0.8.0;
contract MutationEquivalence36
{
    uint x;
    mapping(uint => uint) map;

    function add() public {
        map[x] = x + 1;
    }
}

pragma solidity ^0.8.0;
contract MutationEquivalence38
{
    uint x = 0;

    function add() public {
        x = x + 1;
        if (true) {
            x++;
        }
    }
}
