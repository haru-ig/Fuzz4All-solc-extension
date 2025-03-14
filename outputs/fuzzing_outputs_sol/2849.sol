pragma solidity ^0.8.0;
contract SimpleReceiver {
    function simpleTransfer(address _target, uint _amount) public {
        _target.transfer(_amount);
    }

    receive() external payable    returns (uint, bytes memory) {}
}
