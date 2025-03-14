pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample86_New {
    uint824 private a;
    function doSomething(uint824 a_) public {
        a *= 0x11;
        a *= a;
        a = a % 2 + 0x13;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample87_New {
    uint256 private x;
    mapping(uint824 => uint824) public xmap;
    function doSomething(uint824 x_) public {
        xmap.insert(x_, x_);
    }
}
