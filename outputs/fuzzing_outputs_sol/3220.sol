pragma solidity ^0.8.0;
contract Fallback {
    function fallback(uint256 _amount) public pure {
        for(uint i = 0; i < 10; i++) {
            require(_amount > 10, 'amount too expensive!');
            _amount = _amount + _amount;
        }
    }
}
