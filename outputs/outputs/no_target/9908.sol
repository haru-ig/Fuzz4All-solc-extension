pragma solidity ^0.8.0;
import "i.sol";
contract Test  is i {
    uint public value;
    function m() external pure returns (uint) {
      require(value > -1);
      return value;
    }
}
