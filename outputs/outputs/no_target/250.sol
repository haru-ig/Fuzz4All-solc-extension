pragma solidity ^0.8.0;
contract Immutable {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint _counter;
    function balance() public view returns (uint) {
        _immutable() + 1;
        return _counter;
    }
    function _mutate() external {
        _counter = 30;
        _immutable() + 1;
    }
}
