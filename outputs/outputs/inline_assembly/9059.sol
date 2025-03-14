pragma solidity ^0.8.0;
library Lib
{
    function add(I i) public pure returns(uint) {
        return (i.add2(3) - i.sub2(2) - 5) + i.mul2(2);
    }
}
