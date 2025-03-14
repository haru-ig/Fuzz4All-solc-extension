pragma solidity ^0.8.0;
contract Mutant3c
{
    constructor() public {
        address payable self = payable(this);
        (address payable b) = (self);
        self;
    }
    receive() external payable {}
}

pragma solidity ^0.8.0;
contract Mutant4
{
    struct Data {
      uint b;
      uint h;
      uint m;
      bool n;
    }

    address payable self;
    Data test = Data(0, 0, 0, true);

    constructor() public {
      self = payable (this);
      test.h;
      self;
    }

    receive() external payable {}
}

pragma solidity ^0.8.0;
contract InlineData
{
    struct Data {
        uint b;
        uint h;
    }

    Data test;

    uint[2] private v1;
    uint[3] private v2;
    uint[5] private v3;
    uint[7] private v4;

    uint[2][3] private v5;
    uint[2][5] private v6;
    uint[2][7] private v7;

    struct T {
      uint b;
      uint h;
      uint m;
    }

    T a;
    uint p1;
    uint p2;
    uint p3;
    uint i;

    uint[2] private r1;
    uint[3] private r2;
    uint[5] private r3;
    uint[7] private r4;

    uint[2][3] private r5;
    uint[2][5] private r6;
    uint[2][7] private r7;

    struct D {
        T a;
        uint x;
        uint y;
    }

    D d;

    address payable self;

    constructor() public {
      v1[1] = 10;
      v1[2] = 20;
      v1[3] = 30;
      v1[4] = 40;
      v1[5] = 50;
      assert(v1[1] == 10);
      v6[1][2] = 60;
      v6[2][3] = 60;
      v6[3][4] = 60;
      v6[4][5] = 60;
      v6[5][6
