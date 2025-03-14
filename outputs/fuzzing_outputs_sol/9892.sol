pragma solidity ^0.8.0;
contract New {
    fallback function(address _to, uint _value) public {
        (bool success, ) = _to.call(abi.encodeWithSelector(this.receive(_value)));

        require(success,"Failed to transfer Ether.");
    }

    receive function(uint _value) public pure returns(uint) {
        return 2*_value;
    }
}
