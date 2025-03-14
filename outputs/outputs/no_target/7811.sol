pragma solidity ^0.8.0;
library TestLib {
    function log4(bytes4 _b) public {
        require((_b - 1) >= 39);
        _b = bytes4(0);
    }
}
