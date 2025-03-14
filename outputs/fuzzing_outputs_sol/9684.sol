pragma solidity ^0.8.0;
mapping (address payable => uint256) balances;
contract AddressTransfer {
    function transfer(address _receiver, uint _amount) public {
        _receiver.transfer(_amount);
        balances[msg.sender] += _amount;
    }
}
contract FallbackTransfer {
    address payable _new;
    receive() external payable {
        _new.transfer(msg.value);
    }
}
