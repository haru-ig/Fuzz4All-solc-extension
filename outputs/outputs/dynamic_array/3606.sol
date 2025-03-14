pragma solidity ^0.8.0;
contract C {
    function c() public {
        uint256[5] memory a;
        a[0] = new uint256[](20);
        a[1] = new uint256[](30);
        a[2] = new uint256[](0);
        a[3] = new uint256[](0);
        a[4] = new uint256[](100);
        a[4] = a[4] + a[4];
        a[5] = a[5] + a[5];
    }
}


pragma solidity ^0.8.0;
struct Struct {
    uint32 x;
}
contract C {
    Struct memory s;
    address addr;
    function c() public {
        addr = msg.sender;
        s.x = 0xaaadee2aafe00213;
    }
}
