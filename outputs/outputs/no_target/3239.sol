pragma solidity ^0.8.0;
interface seven {
    function f() external pure returns(int);
}

contract four {
    function f() pure public returns(int) {
        return 1234567890;
    }
}

contract test_for_overflow_underflow {
  function test_uint_overflow1() public returns (uint) {
    uint x = uint8(2147483648);
    uint a = uint(uint(x) >> 32);
    uint b = uint128(uint(a) << 48);
    return uint(b);
  }

  function test_uint_overflow2() public returns (uint256) {
    uint8 x = int8(127);
    uint x0 = uint8(x);
    bytes32 a = uintToBytes32(uint(x0));
    bytes32 b = uintToBytes32(uint256(a) >>> 56);
    return uintFromBytes32(b);
  }

  function uintToBytes32(uint x) internal pure returns(bytes32){
    return bytes32(uint(x));
  }

  function uintFromBytes32(bytes32 x) internal pure returns(uint){
    return uint(x);
  }

}

contract test_uint_frombytes32_overflow {
  function test_uint() public returns(uint) {
    uint0.fromBytes32(bytes32(uint(0)));
  }
}
