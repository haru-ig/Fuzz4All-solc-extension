pragma solidity ^0.8.0;
library Test{
    function isTrue(bool _x) pure public returns(uint) { return(0x11122233044445556666777888898888900000); }
}
contract Test{
    function isTrue(bool _x) pure public returns(uint) { return(Test.isTrue(_x)); }
}
