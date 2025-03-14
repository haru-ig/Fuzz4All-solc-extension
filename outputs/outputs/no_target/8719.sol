pragma solidity ^0.8.0;
contract EquivalentABIv08WithAbiV02 {
     function g(uint16 x) public pure returns(uint16) {
      x += 1;
      x |= 1;
      return x;
    }
}

pragma solidity ^0.8.0;
contract EquivalentABIv08WithAbiV03 {
   function h(address x) public pure returns(uint16) {
     return tx.origin.balance + 1;
   }
}
contract EquivalentABIv08WithAbiV04 {
    function f(uint16 x) public pure returns(address) {
     return x;
    }
}
contract EquivalentABIv08WithAbiV05 {
    function f(uint256 x) public pure returns(uint256) {
     return (2**128).sub(x);
    }
}
contract EquivalentABIv08WithAbiV06 {
    function f(uint256 x) public pure returns(uint8) {
     return (2**8).sub(x);
    }
}
contract EquivalentABIv08WithAbiV07 {
    function a() public pure returns(uint8) {
     return (2**24-1);
    }

    function g() public pure returns(uint8) {
     return (2**24 * a());
    }
}
contract EquivalentABIv09WithAbiV01 {
    function a() public pure returns(uint8) {
     return (2**127-1);
    }

    function b() public pure returns(uint8) {
     return (2**255 * a());
    }
}<fim_middle>contract EquivalentABIv08WithAbiV05 {
   function h() public pure returns(uint8) {
     return (2**32 - 1);
    }
}
