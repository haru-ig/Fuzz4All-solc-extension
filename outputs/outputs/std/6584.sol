pragma solidity ^0.8.0;
contract Mutate16 {
    constructor() {
      x = 5;
      x = x + 1;
      x = 5.390022395264928;
    }
    uint32 private x;
}
contract Mutate17 {
    constructor() {
      x = 5;
      x = x + 1;
      x = 5.4;
      x = 4 + x;
    }
    uint32 private x;
}
contract Mutate18 {
    constructor() {
      x = 0xFFFF0000000000000000000000000000;
      x = x;
      x = x.add(5);
      x = x.add(0xFFFF000000000000000000000000000);
      x = x.lt(0);
      x = x.add(1);
    }
    uint32 private x;
}
contract Mutate19 {
    constructor() {
      uint32 temp = 0xFFFF000000000000000000000000000;
      x = temp;
      x = x.shl(1024).sub(2);
      x = temp.add(3);
      x = x.add(1);
    }
    uint32 private x;
}
contract Mutate20 {
    constructor() {
        uint256 temp = 0xFFFF000000000000000000000000000;
        x = temp.add(1);
        x = x + 3;
        x = x.add(1);
        x = x;
        x--;
    }
    uint32 private x;
}
contract Mutate21 {
    constructor() {
        uint256 temp = 0xFFFF00000000000000000000000000;
        x =
