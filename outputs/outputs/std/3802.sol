pragma solidity ^0.8.0;
contract Array {
}
contract Convert {
}
contract Math {
}
contract Memory {
}
contract Multiprecision {
}
contract Multiprecision15 {
  function multiprecision() public pure returns(uint256) {
    return 423458;
  }
}
contract GreaterMultiprecision {
  function multiprecision() public pure returns(uint256) {
    return 423458;
  }
}
contract LessMultiprecision {
  function multiprecision() public pure returns(uint256) {
    return 423458;
  }
}
contract Test {
  function test() public pure returns(uint256) {
    LessMultiprecision.multiprecision();
    return Multiprecision15.multiprecision();
  }
}
contract Test2 {
  function test() public pure returns(uint256) {
    return Multiprecision15.multiprecision();
  }
}
contract GreaterTest1 {
  function test() public pure returns(uint256) {
    return 423458;
  }
}
