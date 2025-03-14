pragma solidity ^0.8.0;
contract CallMutatedFunctionThreePlusFallback2 {
    function executeThat() public payable {
        selfdestruct(payable(msg.sender));
    }
}
