pragma solidity ^0.8.0;
contract TestCaller {
    uint public constant value = 9;
    constructor () { require(value > 0); }
    receive() external pure { unreachable; }
    function test() public pure {
        bool x = true;
        emit X(x);
    }
    emit X(x.test());
}
