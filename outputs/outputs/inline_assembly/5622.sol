pragma solidity ^0.8.0;
contract ConstantAccessStruct {
    struct MyVariable {
        uint A;
        uint256 B;
    }
    function test() public returns (bool) {
        MyVariable memory _var;
        assembly {
            _var := mload(0x9c)
        }
        return _var.A > _var.B;
    }
}

pragma solidity ^0.8.0;
contract ConstantAccessBlock8 {
    function testTwo() public returns (bool) {
      require(block.timestamp >= timestamp + 3, "Must pass timestamp test.");
      require(
        false,
        "This should be false now. I'll never come here, because the gas requirement seems to work fine."
      );
    }
}
