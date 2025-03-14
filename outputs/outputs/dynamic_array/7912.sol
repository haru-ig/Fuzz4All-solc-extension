pragma solidity ^0.8.0;
contract Test27 {
    bytes[] public bytes_;
    function f() public {
        delete bytes_[0];
    }
}
