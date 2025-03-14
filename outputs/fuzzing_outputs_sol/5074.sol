pragma solidity ^0.8.0;
contract Example {
    uint x = 42;
    function update() public { }
    function fallback() public {
        if (this.balance > 0) {
            revert("This contract has no fallback function.");
        }
        x = x / 2;
        emit Example.CallBack(x);
    }
}
