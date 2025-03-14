pragma solidity ^0.8.0;
contract Test {
    uint public _count;
    function _increment() external {
        _count = _count + 1;
    }
}
