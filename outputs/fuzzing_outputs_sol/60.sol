pragma solidity ^0.8.0;
contract MyTests {
    assembly {
        calldatacopy(0, 0, 0)
        let f := create()
        f()
        revert(0, returndata())
    }
 }
