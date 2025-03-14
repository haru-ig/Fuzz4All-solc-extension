pragma solidity ^0.8.0;
library Test {
    function isTrue(bool _x) pure public returns(uint) { if (_x) return(0); return(1); }
}
