pragma solidity ^0.8.0;
contract Example6 {
    receive() external receiveWithFallBack(uint _amount) {
        (uint _c, uint _d) = safeCall2(this, this, address(this));
        if (msg.value == 0 || msg.value >= _amount) {
            this.transfer(_amount);
        } else {
            this.burn(_amount);
        }
    }

    function safeCall2(address _to, address _from, uint _amount) internal view returns(uint, uint) {
        (uint _c, uint _d) = _to.call{ value: _amount }("");
        uint _transferAmount;
        uint _returnAmount;
        assembly {_returnAmount := div(mload(0x40), _d), _transferAmount := sub(_c, _d), mstore(0x40, add(_c, _d))}
        return(_transferAmount, _returnAmount);
    }
}
