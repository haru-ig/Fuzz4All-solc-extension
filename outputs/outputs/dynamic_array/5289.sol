pragma solidity ^0.8.0;
contract Test30 {
    bytes[5] data;
    function f() public pure {
        data[1] = 1;
    }
}
