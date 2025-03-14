pragma solidity ^0.8.0;
contract MutatorS11 {
   uint256 constant ONE = 1;
    uint256 constant ONE_PLUS = ONE + 1;

    uint256 constant ZERO = 0;
    require(ZERO == ONE + ONE_PLUS, "Should be equal to 2")
    function modify(uint64 n) public pure {
      return (n << (ONE_PLUS * 64)) | ONE_PLUS;
    }

}
pragma solidity ^0.8.0;
contract MutatorS12 {

    uint256 constant ONE = 1;
    uint256 constant ONE_PLUS = ONE + 1;
    uint256 constant ONE_MINUS = 1U - ONE;
    uint256 constant MINUS_ONE = ONE_MINUS;

    uint256 constant ZERO = 0;
    uint256 constant ONE_PLUS_EVEN = ONE_PLUS + 2;
    uint256 constant ONE_MINUS_EVEN = ONE_MINUS - 2;
    function modify(uint64 n) public pure {
      return (n << (ONE_PLUS * 64)) | (1U - ONE_MINUS);
    }

}
