pragma solidity ^0.8.0;
contract Test {
    constructor() public {
      uint[1] arr2 = new uint[](1)[];
      arr2[0] = 1;
      new uint[1][2];
    }

    constructor(uint[1][5] a) public {
      uint[1][2] arr2 = a;
      arr2[0] = 1;
      new uint[2]();
      new uint[](1)[];
      new uint[3][5][1][2];
      new uint[1][2];
      new uint[1][5][1][2];
      new uint[22];
      new uint[][14];
    }

    constructor(uint[22] a) public {
        arr = a;
        new uint[][22];
        new uint[22];
        new uint[](22);
    }

    constructor() public {
        uint[1][2] arr2 = new uint[](1)[];
        arr2[0] = 1;
        new uint[1][2][2]();
    }

    constructor (uint a) public {
        uint[1][2] arr2 = new uint[](1)[];
        arr2[0] = 1;
        a[0] = 1;
        new uint[][22];
        new uint[22];
        new uint[](22);
        new uint[22][1234
