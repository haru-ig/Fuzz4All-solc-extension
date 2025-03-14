pragma solidity ^0.8.0;
contract m209 {
    bytes1 public s;
    MyStruct public s_;
    constructor() public {
        s = s;
        i++;
        i += 2 + 3 * s_.y;
        if (4 == 3) revert();
        s_.w = s_.y + 10;
        s_.y = s_.z + 2;
        delete s_.z;
    }
}
