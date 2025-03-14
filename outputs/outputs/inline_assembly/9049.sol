pragma solidity ^0.8.0;

interface I
{
    function add2(uint) external pure returns (uint);

    function sub2(uint) external pure returns (uint);

    function mul2(uint) external pure returns (uint);
}

library Lib
{
    function add(I i) public pure returns(uint) {
        return (i.add2(3) - i.sub2(2) - 5) + i.mul2(2);
    }
}
