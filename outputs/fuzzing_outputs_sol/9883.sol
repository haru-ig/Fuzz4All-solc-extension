pragma solidity ^0.8.0;
contract Old {
    function old2(uint _a) pure public returns(uint) {
        return _a == uint(old(_a)) + 1;
    }
}
