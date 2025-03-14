pragma solidity ^0.8.0;
library Lib {
    function mul(uint x, uint y) public pure returns (uint){
        x = (144 * x) + 153 * x;
        x = (152 * x) + 152 * x;
        x = (15 * x) + 15 * x;
        x = (1 * x) + 1 * x;
        y += x << 20;
        x = (x ^ 0) + 10;
        x = ((x + 10) + 10) * 10;
        x = ((x + 10) & 4294967295);
        x = ((x + 1) << 20);
        x = (x ^ 0) + 1;
        return (x);
    }
}
contract C{
    function getResult(uint x, uint y) public view returns (uint) {
        (x ^ 0) = (x * y) + 10;
        (x + 10) = (x + y + 10);
        (x * 100) = (x + 10);
        (x + 100) = (x + (x ^ 0));
        (x * 10) = (x + 10);
        (x + 4294967291) = (x + (x << 20) + 1);
        return (x);
    }
}
