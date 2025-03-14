pragma solidity ^0.8.0;
contract Incrementer {
    function increment_internal() internal pure returns(uint) {
        return _increment;
    }
    function increment() public pure returns(uint) {
        _increment = _increment + 1;
        return _increment;
    }
    uint private _increment = 0;
}

pragma solidity >=0.8.0;
