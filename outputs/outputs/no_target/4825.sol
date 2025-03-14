pragma solidity ^0.8.0;
library B { function foo() public pure returns (uint256) { } }
contract C { function f() public returns (uint8) {return B.foo() ^ 1;} }

assembly {
  import "../../../lib.sol";
  let _return = not global;
  switch calldatacopy{
    case 0: _return = global.f(); break;
    default: revert();
  }
  return(_return);
}
