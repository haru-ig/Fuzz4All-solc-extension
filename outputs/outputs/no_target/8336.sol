pragma solidity ^0.8.0;
contract Wrapping {
    function div(uint a, uint b) internal pure returns (uint) {
      unchecked {
        return a / b;
      }
    }
}
