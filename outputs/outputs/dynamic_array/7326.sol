pragma solidity ^0.8.0;

abstract contract HelperContract {
    uint[][][] public immutable _value;
    constructor();
}
contract HelperContract2 is HelperContract {
}
