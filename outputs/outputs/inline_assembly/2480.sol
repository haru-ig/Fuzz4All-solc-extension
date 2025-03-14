pragma solidity ^0.8.0;
contract Comp2
{
    uint _a;
    mapping (uint => string) _b;

    function setIncrease(uint _increase) public {
        _a++;
        _b[_increase] = 'Increase';
    }
}
pragma solidity ^0.8.0;
contract Comp3
{
    uint _a;
    mapping (uint => bool) _b;

    function setIncrease(uint _increase) public {
        _a++;
        _b[_increase] = true;
    }
}@title Comp4 - Create an abstract class which is created to implement multiple methods.
pragma solidity ^0.8.0;
contract Comp4 {
    function test() public abstract returns (uint);
}
pragma solidity ^0.8.0;
contract Comp5
{
    struct Struct1
    {
        uint x;
    }

    function setIncrease(uint _increase) public {
        (, ) = Comp4.test();
    }
}
pragma solidity ^0.8.0
