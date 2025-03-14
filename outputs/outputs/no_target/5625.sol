pragma solidity ^0.8.0;
contract IA{
    uint x;
    uint y = 1;
    function getX() public view returns (uint, uint, uint) {
        return (x, x, x);
    }
    function getY() public view returns (uint, uint, uint) {
        return (y, y, y);
    }
    uint x = 1;
}
pragma solidity ^0.8.0;
contract B{
    uint public x = 1;
    uint y = 2;
    function g1(uint a, uint b, uint c) public returns (uint256, uint, uint) {
        uint256 a1 = (uint256(1) << a);
        uint a2 = ~a;
        uint a3 = a1 + b;
        a += a2;
        bool b1 = a - 2!= 3;
        uint256 b2 = uint256(uint256(2) << b);
        assert(b==b2 && b1==false);
        return (x, a, b);
    }
    function g2(uint a, uint b, uint c) public pure returns (uint, uint, uint) {
        return g1(a, b, c);
    }
}
