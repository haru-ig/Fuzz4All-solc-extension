pragma solidity ^0.8.0;
contract mutatedStorage2 {
    uint a;
    uint b;
    mapping(uint => uint) c;
    mapping(uint => mapping(uint => uint)) d;
    uint x;
    uint y;
    constructor(uint x_, uint y_) public {
        x = x_;
        y = y_;
        check(x+y < 5);
        check(x >= 0);
        check(y >= 0);
        a = x;
        b = y;
        c[x] += 1;
        d[x][y] += 1;
        c[y] += 1;
        d[y][x] += 1;
        c[a] += 1;
        d[a][b] += 1;
        c[b] += 1;
        d[b][a] += 1;
    }
    function check(bool predicate) internal pure {
        require(predicate);
    }
}
