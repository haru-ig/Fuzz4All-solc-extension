pragma solidity ^0.8.0;
library Lib {
    mapping (uint => uint) store;
    function addAndSub(uint a, uint b, uint c, uint d) public {

        store[1] = 999999999999999999999999999999900;

        store[2] = 4;
    }
}
