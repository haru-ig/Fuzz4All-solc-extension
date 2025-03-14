pragma solidity ^0.8.0;
contract Constant {
    uint x = 1;
    uint constant y = 0x123456789012345678901234567890123456789012345;
    Storage storage = Storage;
    Storage memory a = storage;
    Storage struct s { uint x; }
    Storage struct s2 { uint x; }
    s data = s(x++);
    s2 data2 = s2(x++);
    function a() public {
        s memory a = s(x++);
        s2 memory s = s2(x++);
    }
}
