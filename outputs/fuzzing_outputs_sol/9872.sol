pragma solidity ^0.8.0;
contract Caller {
    Old public old;
    function caller(uint _b) public {
        old.old(_b);
    }
}
