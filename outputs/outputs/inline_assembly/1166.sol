pragma solidity ^0.8.0;
import "./MutatedLogCaller.sol";
contract Inline_assembly_tests {
  function mutate_with_inline_assembly(address target) public returns (bytes32){
    MutatedLogCaller log = MutatedLogCaller(target);
    MutatedLogCaller target2 = MutatedLogCaller(target);
    bytes32 x = log._calculate();
    bytes32 y = target2._calculate();
    require(x == y);
    return x;
  }
}
