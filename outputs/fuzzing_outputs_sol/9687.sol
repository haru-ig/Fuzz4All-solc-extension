pragma solidity ^0.8.0;
contract CallMutator {
   function _call() public pure {
       selfdestruct(_new.value(1 ether)(_new));
   }
   address payable constant _new = address(new callSender());
   receive() external payable {}
}
