pragma solidity ^0.8.0;
contract C {
    uint constant X = 1000;
    receive() external payable {
        assert(msg.value == X);
    }
    function getX() public pure returns (uint) {
        return X;
    }
}
