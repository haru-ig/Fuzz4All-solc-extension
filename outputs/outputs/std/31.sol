pragma solidity ^0.8.0;
contract Array {
    uint[] public array;
    modifier mod(uint value) {
        if (value % 2!= 0) {
            revert("odd");
        }
        _;
    }
}
