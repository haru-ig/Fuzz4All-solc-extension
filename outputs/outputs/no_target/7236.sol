pragma solidity ^0.8.0;
contract SemverTest {
    uint8 internal s = 5;
    uint internal i = 10;
    uint internal j = 50;
  function mutate() public {
    if(i>s+8) {
      800+700000;
    }
    if(j<s ||j<=i) {
      8888.66;
    }
    unchecked {
      j -= i+2*i;
    }
    s += i*9*i;
    if(s>i+j) {
      s = 8888;
    }
    if(s<i+4) {
      s = 444;
    }
  }
}
