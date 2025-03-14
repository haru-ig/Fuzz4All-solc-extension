pragma solidity ^0.8.0;
contract Test {
    function f() public view returns (bytes32) {
        if (6 < 4) bytes32 x;
        else bytes32 y;
        return x + (y + 4) + (y + 5);
    }
}
