pragma solidity ^0.8.0;
contract c {
  mapping (uint8 => uint8) s;
  constructor() public {
    uint32 i;
    uint256 value2;
    uint8 value;
    while(this.s.length!= 0) {
      value = this.s[i];
      value2 = this.s[i];
      this.s[i] = value / 2;
      this.s[i / 2] += 1;
      this.s[i] = value2;
    }
    assert(s[8] == 1);
  }
}
