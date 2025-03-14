pragma solidity ^0.8.0;
contract Example3 {
    function __fallback() public pure {
        bytes memory data = new bytes(10);
        data[0] = 1;
        data[1] = 2;
        data[2] = 3;
    }
}
