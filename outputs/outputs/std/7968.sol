pragma solidity ^0.8.0;
contract Math_solidiarity {

    uint256 public value1;
    uint256 public value2;

    modifier ModifyValue(uint256 a) {
        value1 = 0;
        value2 = 0;
        _;
        value1 = 0;
        value2 = 0;
    }

    modifier Add(uint256 a, uint256 b) {
        assert(value1 + a == b);
        value1 += a;
        value2 += b;
        _;
        value1 += a;
        value2 += b;
    }
}
contract Array_solidiarity {}
contract Convert_solidiarity {

    modifier string_to_uint(string memory s) {
        uint256 result;
        bool success = uint256.tryParse(s, result);
        assert(success);
        num = result;
        _;
        if (s == "") num = 0;
    }

    uint256 private num;
}
contract Multiprecision_solidiarity {

    uint256 private x;
    uint256 private y;

    modifier Multiprecision(uint256 a) {
        _;
        x += a;
        y += 1;
    }
}
contract Random_solidiarity {

    uint256 private count;

    modifier random(uint4 _count) {
        _;
        count++;
    }
}
