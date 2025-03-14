pragma solidity ^0.8.0;
interface MixedContactsExample501Interface {
  function someOperation() external view returns (uint64);
}
contract MixedContactsExample500 {
    uint56 x;
    uint56 a;
    uint56 b;
    uint56 c;
    uint56 d;
    uint56 e;
    uint56 y;
    event SOMEvent(uint value, uint64 count);
    function DOSOMETHING() public view returns (uint64) {
        uint64 temp;
        uint64 temp1;
        uint temp1;
        temp = a+ c;
        temp1 = x;
        x = temp1+ 8;
        temp = b- 5;
        x += temp1;
    }
}
