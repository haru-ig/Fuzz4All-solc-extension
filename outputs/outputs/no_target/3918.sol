pragma solidity ^0.8.0;
 contract C {
    uint private x;
    constructor () public {
        x = 0x7FFFFFFFFFFFFFFF;
        x++;
    }
}
