pragma solidity ^0.8.0;
contract MutatedBlock2Mutation86 {
    struct A {
        uint x;
        uint y;
        uint z;
    }

    uint internal _x;
    uint internal _y;
    uint internal _a;
    uint internal _b;
    function test2(A memory a) public returns (uint) {
        a.x += 10;
        a.y = block.number * block.difficulty;
        a.z = block.number & 1;
        _x = block.number;
        return _a + _b + _y;
    }
}

pragma solidity ^0.8.0;
contract MutatedBlock2Mutation87 {
    struct A {
        uint x;
        uint y;
        uint z;
    }

    uint internal _x;
    uint internal _y;
    uint internal _a;
    uint internal _b;
    function test2(A memory a) public returns (uint) {
        a.x += 10;
        a.y = block.number * block.difficulty;
        _a += a.x;
        _b += block.number;
        a.z = a.x & 1;
        _y = -(_y % (_y + a.y & _y));
        return _x + _b + -a.z;
    }
}
