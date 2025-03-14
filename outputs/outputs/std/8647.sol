pragma solidity ^0.8.0;
contract MutationEquivalence41
{
    struct Point {
        uint x;
        uint y;
    }
    function add(Point inputPoint) public {
        x = inputPoint.x + inputPoint.y;
    }
}
contract MutationEquivalence42
{
    uint256 x;
    function add(uint n) public {
        x = x + n;
    }
}
contract MutationEquivalence43
{
    struct MyUint {
        uint x;
        uint y;
    }
    function add(MyUint memory n) internal {
        (x, y) = (n.x, n.y);
        (x, y) = (y, x);
    }
}
