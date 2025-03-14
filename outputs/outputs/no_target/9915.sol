pragma solidity ^0.8.0;
import { i } from "../i.sol";
contract c {
    uint[10] a;
    constructor(uint[10] memory array_) public {
        a = array_;
    }
    function test(uint[10] memory array_) public {
        require(array_.length > 0);
        i tempInt = i(0);
        for (uint i = 0; i < 8; i++) {
            uint j = tempInt.m();
            require(j > 0);
            tempInt = i;
        }
    }
}
