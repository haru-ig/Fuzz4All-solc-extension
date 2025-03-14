pragma solidity ^0.8.0;
contract EtherTesterMutated {
    receive(address _to, uint256 _amount) payable {}
    receive() external payable {}
}
