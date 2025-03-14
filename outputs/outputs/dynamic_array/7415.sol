pragma solidity ^0.8.0;
contract Test34{
    uint[5] public dynArr;
    uint[3] a;
    uint[6] b;
      uint p;
    function setTest() public {
        dynArr[0] +=  2;
        dynArr[1] +=  3;
        dynArr[2] += 4;
        b[0] += p;
    }
}
