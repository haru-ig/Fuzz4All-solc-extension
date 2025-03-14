pragma solidity ^0.8.0;
contract I {
    function f() public pure {
        int x;
        unchecked {
            int z = address(this).balance;
        }
    }
}
