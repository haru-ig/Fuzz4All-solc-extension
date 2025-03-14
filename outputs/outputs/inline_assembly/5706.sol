pragma solidity ^0.8.0;
import "MutationTemplate.sol";
contract MutatedInlineAssemblyMutation5 is MutationTemplate {
    function mutate() public {
      uint x;
      x = x + uint8(1);
      _var = x;
    }
}
