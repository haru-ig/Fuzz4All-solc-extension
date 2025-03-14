pragma solidity ^0.8.0;
contract Contract11Mut6 {
    function fallback(address _sender, uint256 _value) external {
        _sender.transfer(_value);
        emit Fulfilled(_sender, _value);
    }
}
