pragma solidity ^0.8.0;
contract Mutate {
    uint256 constant two = 2;
    uint256 constant six = 6;
    uint256 constant fiftyOne = 511;
}
contract AdjustNumber {
    uint256 x;
}
contract Math {

    uint public x;
    uint public y;
    uint public constant zero = 0;
}
contract Multiply {
        uint constant zero = 0;
        uint constant one = 1;
        uint constant two = 2;
        uint constant four = 4;
    }
pragma solidity ^0.8.0;
contract MultiPrecision {
    struct Point {
        uint8 x;
        uint8 y;
    }
    function pointAdd (Point memory p, Point memory q) returns(Point memory) {
        Point storage res = memory;
        res.x = p.x + q.x;
        res.y = p.y + q.y;
    }
    function pointMul (Point memory p, Point memory q) returns(Point memory) {
        Point storage res = memory;
        res.x = p.x * q.x;
        res.y = p.y * q.y;
    }
}
