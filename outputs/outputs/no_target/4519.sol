pragma solidity ^0.8.0;
contract C {
    uint160 private v;
    function myFunction() public {
        uint160 w;
        unchecked {
            w = -v;
            w = w - w;
        }
        v = w;
    }
}
