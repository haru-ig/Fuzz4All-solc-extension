pragma solidity ^0.8.0;
contract Bar {
    function bar() public pure {
        uint8 y_ = uint8(0);
        uint8 x;
        (x, y_) = (1, y_);
    }
}

pragma solidity ^0.8.0;
contract Bar {
    function bar() public pure {
        uint8[] memory b = new uint8[](1);
        ^^^ ERROR TYPE_MISMATCH
    }
}
  }
