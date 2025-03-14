pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample107_New {
   function function_1() public pure {
    assembly {
        sstore(0xc0de08, v0)
        mstore(0x80de00, v0)
        calldataload(0x40d700)
    }
  }
  function function_2() public pure {
    assembly {
        sstore(0x81d700, v0)
        mstore(0x40d700, v0)
        calldataload(0x40d700)
    }
  }
}

pragma solidity ^0.8.0;
contract MixedContactsExample119_New {
    function doSomething() public {
        a *= a;
        b *= d / e;
        b *= c;
        a *= ex;
        c *= ex;
        b = b%1 + 0x13;
        a = a%1 + 0x1a;
    }
    function check() public {
        require(b == 0x1100, "b");
    }
    address check();
    event event2(uint256 indexed key, uint256 indexed value);
    mapping(uint256 => uint256) keys;
}
contract CheckKey2Contract {
    event Log(uint256 indexed key);
    bool public bool_;
    emit Log(1);
    constructor() public { bool_ = true; }

address private check_;

    event Log(address index);

    constructor(address _check) public {
    check_ = _check;
    }

    function check() public view returns (bool) {
    Log(address(check_));
    return bool_;
    }
}
contract MixedContactsExample188_New {
    uint256 public a;
    uint256 public b;
    uint256 public c;
    uint256 public d;
    uint
