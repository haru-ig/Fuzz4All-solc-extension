pragma solidity ^0.8.0;
contract Y {
    uint8  constant private C =  100;
    uint8 constant private M = uint8(0);

    uint8 public constant X = C + M;
    uint8 public constant Y = C +  M;
}
