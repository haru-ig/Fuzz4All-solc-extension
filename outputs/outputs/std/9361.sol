pragma solidity ^0.8.0;
contract Mutate3
{
    function mutateX () public
    {
        uint256 x = 2;
        uint256 y = 3;
        uint256 z = 4;
        x = mutateX(x,y,z);
    }
}

pragma solidity 0.8.0;
contract Mutate4 {
    constructor()
    {
    }

    function setX(int256 x) public
    {
        x = 2;
    }

    function incX(int256 x) public
    {
        x = x + 1;
    }

    function decX(int256 x) public
    {
        x = x - 1;
    }

    function setZ(uint256 x) public
    {
        (x, __) = (2, 3);
    }

    function set(uint256 x, int256 y, uint256 z) public
    {
        (x,y,z) = (7, 5, 13);
    }

    function sum(uint256 x, uint256 y) public pure returns (uint256 sum)
    {
        return x + y;
    }
}
