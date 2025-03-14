pragma solidity ^0.8.0;
contract Incrementer {
    function increment_internal() internal returns(uint) {
        return _increment;
    }
    function increment() public pure returns(uint) {
        if(_increment > 1000000000000000000)
        {
            _increment += 1;
        }
        return _increment;
    }
    uint private constant _increment = 1;
}
