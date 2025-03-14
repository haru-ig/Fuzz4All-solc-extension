pragma solidity ^0.8.0;

contract E7H2Mutated
{
    uint public counter1 = 123;
    uint public counter2 = 95;

    constructor(uint _x) public
    {
        counter1 = _x;
        counter2 = _x;
    }
    function set(uint _x) public returns (bool)
    {
        counter1 = _x;
        return (
            counter2 = _x * 5,
            true
        );
    }
    function set2(uint _x) public returns (bool)
    {
        counter1 = _x;
        counter2 = _x;
        return (
          !counter2.testbit(127),
          !counter2.testbit(97),
            true
        );
    }
    function subtract(uint _x) public returns (bool)
    {
        counter1 = _x - counter2;
        return (!counter2.testbit(127), true);
    }
}
