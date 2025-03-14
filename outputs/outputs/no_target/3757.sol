pragma solidity ^0.8.0;
contract E2 {
    uint256 d;
    uint80 e;
    uint256 a;
    function h() public {
        a = ~a;
        d = ~d;
        e = ~e;
    }
}
contract E3 {
    uint256 d;
    uint256 e;
    uint80 a;
    function h() public {
        a = ~a;
        d = ~d;
        e = ~e;
    }
}





pragma solidity 0.8.9;

contract SignedSafeMath {
  uint256 private constant _maxSignedInt = (1 << 15) - 1;




  function safeAdd(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + b;

    require(c >= a, "SignedSafeMath:addition overflow");

    return c;
  }




  function safeSub(uint256 a, uint256 b) internal pure returns (uint256) {
    unchecked {
      require(b <= a, "SignedSafeMath:subtraction overflow");
    }
    uint256 c = a - b;

    return c;
  }

  /**
   * @dev Returns the multiplication of two unsigned integers, reverting on
   * overflow.
   *
   * Counterpart to Solidity's `*` operator.
   *
