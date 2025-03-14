pragma solidity ^0.8.0;
contract Example{
    uint256 public x;
    uint32 public x1;
    uint64 public x2;
    uint128 public x3;
    uint256 public x4;
    constructor() public {
        x = 0;
        x1 = 0;
        x2 = 0;
        x3 = 0;
        x4 = 0;
    }
    function set(uint256 x, uint32 x1, uint64 x2) public {
        require(x <= 2**31-1);
        require(x1 <= 2**31-1);
        require(x2 <= 2**31-1);
        x = x;
        x1 = x1;
        x2 = x2;
    }
    function set2(uint256 x, uint32 x1) public {
        require(x <= 2**31-1);
        require(x1 <= 2**31-1);
        require(x <= 2**63-1);
        x = x;
        x1 = x1;
    }
    function set3(uint256 x, uint32 x1, uint64 x2) public {
        require(x <= 2**31-1);
        require(x1 <= 2**31-1);
        require(x2 <= 2**31-1);
        require(x <= 2**47-1);
        x = x;
        x1 = x1;
        x2 = x2;
    }
    function set4() public {
        require(x <= 2**31-1);
        require(x1 <= 2**31-1);
        require(x2 <= 2**31-1);
        require(x3 <= 2**47-1);
        x = 0;
        x1 = 0;
        x2 = 0;
        x3 = 0xFFFFF;
    }
}
