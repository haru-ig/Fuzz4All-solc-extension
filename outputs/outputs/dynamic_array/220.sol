pragma solidity ^0.8.0;
contract C6 {
    constructor() payable {}
    function modify(uint256 a, uint256 b) onlyowner public returns (uint256) {
        return a + b;
    }
}
contract C7 {
    uint256[] d;
    uint256 a;
    uint256 b;
    uint256 c;
    uint256[] e;
    uint256 f;
    uint256 g;
    uint256 x;
    uint256 y;
    uint256 z;

    constructor() {
        a = 0;
        d = [0];
        b = 0;
        c = 0;
        e = new uint256[](0);
        f = 0;
        g = 0;
        x = 0;
        y = 0;
        z = 0;
    }

    function modify1(uint256 x, uint256 y, uint256 z) onlyowner public returns (uint256) {
        return 1;
    }
    function add(uint256 x) public {
        a += 1;
    }
    function add2() public {
        uint256 x = a;
        a += 2;
    }
    function add3() public {
        z = 2;
        y = 1;
    }
    function add4(uint256 x, uint256 y, uint256 z) public {
        y += x + 2;
        x *= 2;
    }
    function modify5(uint256 x, uint256 y, uint256 z) public {
        (x, y, z) = (1, 2, 3);
    }
    function modify6(uint256 x, uint256 y, uint256 z) public {
        (x, y) = (a, 2);
        y += x * 2;
    }
    function modify7(uint256 x, uint256 y, uint256 z) public {
        (x, y) = (4, 2);
        setY(4, 2);
    }
    function modify8(uint256 x, uint256 y, uint256 z) public {
        d = [1];
        x *= 2;
        setD();
    }
    function modify9(uint256 x, uint256 y, uint256 z) public {
        (x, y, z) =
