pragma solidity ^0.8.0;
contract Mutation3
{
    uint public a;
    constructor() {
        a = a * 10;
    }
    function update() public {
        a = a / 2;
    }
}

pragma solidity ^0.8.0;
contract Mutation4
{
    uint public x;
    uint public y;

    constructor(uint _x) {
        x = _x;
        y = _x*2;
    }
    function update() public {
        x = x / 2;
    }
}
