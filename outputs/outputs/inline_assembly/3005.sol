pragma solidity ^0.8.0;
contract Mutated {
    mapping (uint => uint) public mapX;
    uint numX = 5;
    uint x = 5;
    uint y = 1;
    function test() public {
        uint a = getX();
        if (a > 5) {
            numX = a + 1;
            x = x + y;
        } else {
            x = x+1;
        }
        uint b = getX();
        require(numX == b);
        require(a == b);
    }
    function test2() public {
        uint a = getX();
        mapX[x] = a + 1;
        uint b = getX();
        require(a == b);
    }
}
