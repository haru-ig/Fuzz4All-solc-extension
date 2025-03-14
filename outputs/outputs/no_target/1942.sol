pragma solidity ^0.8.0;
contract StringWrapper {
    function f() pure public returns (string memory) {
        unchecked {
            string memory x = StringWrapper.f();
            return x;
        }
    }
}
