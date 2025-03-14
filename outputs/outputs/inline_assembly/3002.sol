pragma solidity ^0.8.0;
contract C {
    function setY(uint y) public {
        uint40 n = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
        assembly {
            _
            mstore(n, y)
            _
        }
    }
}
