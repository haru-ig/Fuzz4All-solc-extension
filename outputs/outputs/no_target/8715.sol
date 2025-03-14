pragma solidity ^0.8.0;
contract EquivalentABIv08WithAbiV01Modified {
     function f(uint256 x) public pure returns(uint256) {
      uint256 y = uint256(x);
      x -= y < 0;
      y += 2;
      x *= y < 0;

      x += uint224(uint32(x));
      x += 256 ** 2;
      return x;
    }
}

pragma solidity ^0.8.0;
contract EquivalentABIv08WithAbiV01AdditionalEmptyFunctions {
     function f(uint256 x) public pure returns(uint256) {

      return x;
    }
}
