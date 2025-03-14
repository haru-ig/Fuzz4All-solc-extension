pragma solidity ^0.8.0;
library library1 {
    function log(uint x) internal pure {
        x;
        uint32 a;
        assembly{ a := 3 }  x = a;
    }
}
