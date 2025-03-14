pragma solidity ^0.8.0;
contract modifierA{
    function f() public pure returns (uint256){
        return 0;
    }
}
contract myContractA is modifierA {
}
contract myContractB {
    uint x;
    modifier A{
        x = 1;
        x = 2;
        uint256 x2 =0x00;
        x2 = uint128(x);
        x2 = uint16();
        x2 = uint255();
        x2 = uint256(uint16(x));
        x2 = uint14();
        x2 = uint8(x);
        uint160 x3;
        x -= 10000000;
        if (x > 100000000000000) revert("x");
    }
    modifier B{
        x = x || 2;
        x = x && 3;
    }
    modifier C{
        x -= 100000000000000;
        if (x < 1000000000000000) revert("x");
    }
    modifier D{
        x = x >> 1;
        x = ~x;
        return address(this);
    }
    modifier E{
        x = uint16();
        x = uint8(x | 1);
        x = -1;
        x = -2;
        x = x & 255;
        x = x | 1;
        x = -uint8(x);
        x = x >>> 1;
        x = x ^ 1;
    }
    modifier F{
        x = uint16();
        x = 0;
        x = 0;
        x = 0;
        x = x - 100000000000000;
        if (x >= 10000000000000000) revert("x");
    }
    modifier G{
        x = uint16();
        x = 1;
        x = 2;
        x = 4;
        x = uint32(x);
        x = uint64(x);
        x = uint16(x);
        x = uint256(x);
        x = uint14(x);
        x = uint8(x);
    }
}

contract myContractG {
    modifier H{
        uint161 x;
        x = 1;
        x
