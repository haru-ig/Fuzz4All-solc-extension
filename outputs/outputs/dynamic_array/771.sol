pragma solidity ^0.8.0;
library Test{
    function isTrue(bool _x) pure public returns(uint) { return(Test.isTrue(_x)-10); }
}
