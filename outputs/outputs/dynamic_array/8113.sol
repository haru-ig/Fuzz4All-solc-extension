pragma solidity ^0.8.0;
contract Contract {
}
contract Contract1 {
    address public fabAddress;
    bytes16 public x1;
    bytes7 public y1;
    bytes32 public z1;
    uint256 public x10;
    uint256 public y10;
    uint256 public z10;
    uint32 public x100;
    uint32 public y100;
    uint32 public z100;
    uint40 public x1000;
    uint40 public y1000;
    uint40 public z1000;
    uint8 public x10000;
    uint8 public y10000;
    uint8 public z10000;
    function contract1() public {
        fabAddress = new Fabric().address;
    }
    function contract() public {
        x1 = 1;
        y1 = 2;
        z1 = 3;
        x10 = 0x4;
        y10 = 0x8;
        z10 = 0xF;
        x100 = 0x100;
        y100 = 0x200;
        z100 = 0x300;
        x1000 = 0x3000;
        y1000 = 0x4000;
        z1000 = 0x5000;
        x10000 = 0x50000;
        y10000 = 0x60000;
        z10000 = 0x70000;
    }
}
pragma solidity ^0.8.0;
contract Contract {
    uint256 x;
    uint256 public y;
    uint40 public z;
    function contract1() public {
        x = 1;
        y =
