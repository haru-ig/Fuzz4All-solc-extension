pragma solidity ^0.8.0;
library SafeMath
{
    function add(uint a, uint b) internal pure returns (uint) {
        uint c;
        assembly{
            c := a + b
        }
        return c;
    }
}
library SafeMathUpgradeable
{
    using SafeMath for uint;

    function add(uint a, uint b) internal pure returns (uint) {
        return a.add(b);
    }
}
contract Comp2
{
    uint public a1, a2;
    constructor(uint _a1, uint _a2)
    {
        a1 = _a1;
        a2 = _a2;
    }
    function increamse(uint _increase) public
    {
        a1 = SafeMathUpgradeable.add(a1, _increase);
    }
    function decreamse(uint _decrease) public
    {
        a2 = SafeMathUpgradeable.sub(a2, _decrease);
    }
}





pragma solidity ^0.8.0;
contract Comp2
{
    uint public a1, a2;
    constructor(uint _a1, uint _a2)
    {
        a1 = _a1;
        a2 = _a2;
    }

    function increamse(uint _increase) public
    {
        a1 = SafeMath.add(a1, _increase);
    }
    function decreamse(uint _decrease) public
    {
        a2 = SafeMath.sub(a2, _decrease);
    }
}
