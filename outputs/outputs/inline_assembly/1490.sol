pragma solidity ^0.8.0;
contract Mutant12n6 {
  function get() public pure returns (uint256, uint256) {
    uint256 x, y;
    assembly {
      x := 0
      b := 1
      x := add(x, b)
      b := mul(b, mul(b, b))
      y := div(b, x)
      mstore(slot(1), y)
    }
    uint256 m = uint256(mload(address(this))) / 2;
    return (m,m);
  }
}

pragma solidity ^0.8.0;
contract Mutant12n6_1 {
  function get() public {
    uint256 x, y;
    uint256 a;
    uint256 b;
    if(a!= 1) {
      inline.get();
      if(b!= 997704) {
        revert();
      }
    }
    if(x!= 238) {
      y = mul(add(c, d), 9);
      d = x;
      x = y;
    }
    if(y!= 3153) {
      revert();
    }
  }
}

pragma solidity ^0.8.0;
contract Mutant12n6_2 {
  function get() public {
    uint256 x, y;
    uint256 a;
    uint256 b;
    if(a!= 100) {
      inline.get();
      if(b!= 99) {
        revert();
      }
    }
    if(x!= 50505050) {
      y = mul(add(m), 10);
      d = x;
      x = y;
    }
    if(y!= 50505050) {
      revert();
    }
  }
}

pragma solidity ^0.8.0;
contract Mutant12n6_3 {
  function get() public {
    uint256[] memory A = new uint256[](0);
    uint256 i;
    uint256 x;
    for(i = 0; i < A.length; i++) {
      inline.get();
      x = mload(address(A[i]));
      if(x
