pragma solidity ^0.8.0;
contract Mutation
{
    uint public a;
    uint public b;
    uint8 x = 1;
    uint public z;
    constructor() {
        a = 2;
        b = 2;
    }
    modifier m() {
        x++;
        b++;
        z = x;
    }
    function update() public {
        a++;
        a = a + 1;
    }
    function changeValues() public {
        b++;
        b = a;
        b = a;
    }
    function updateValues() public {
        changeValues();
        z++;
        z = a;
        z = z + 2;
    }
    function addOne() public m {
        a++;
        a = a + 1;
        z = b + 2;
        a--;
        a = a + 1;
        x = z - x + 2;
        z = z + 4;
        x--;
        z = z + x;
        x = x - b + a - 1;
        x = x - (a + 1) + 3;
        z = z + -1 - 5;
    }
}
