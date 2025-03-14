pragma solidity ^0.8.0;
contract Baz {
    bool y;
    receive() external payable {
        y = true;
    }
}
