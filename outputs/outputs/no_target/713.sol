pragma solidity ^0.8.0;
contract Test {
  struct A {
    uint x;
    uint y;
  }
  struct AA {
    uint x;
  }
  A constant c = A{.x = 1.111,.y = 222 };
  A storage a;
  AA constant _ = AA{.x = 2.222,.y = 222 };
  AA storage a2;
  address constant _aRef = address(0x1);
  uint256 constant _a2Ref = 255;
  uint256 constant _value = 12345;
  address constant _valueRef = 0x40;
  uint256 constant _array = [98, 2, 1];
  bytes memory _arrayBytes = hex"400000000000000000000000000000000030420000000000000000000000000000000000000000000000001";
  bytes32 _empty;
  address constant _uint160Ref = 0xf88a8b754d0000000000026411f49f23b4fe3aa32b7776562014de0493bf8bc5";
  uint128 _uint256Ref = 0x410dc6eb55a6a7b5a95f23fb72777da9f5ff9672d65f7f7986978fa5cd3db186;
}

pragma solidity ^0.8.0;
contract Test {
  constructor() {}
}

pragma solidity >=0.7.0 <0.8.0;
contract Test {
  uint immutable _i;
  event LogEvent(uint128 _i);
  constructor() public {
    bytes2 b;
    uint _length;
    b = 0x40;
    _length = 1;
    _i = b.length < _length? 2 : 3;
  }
}

contract BaseLib {
  function multiply(uint256 a, uint256 b) internal pure returns (uint256) {
    require(b > 0, "Math: divide by zero");
    return a * b;
  }
}
