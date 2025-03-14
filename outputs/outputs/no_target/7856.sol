pragma solidity ^0.8.0;
contract TestMutator {
    require(false);
    function get() pure public returns(uint40) {
        uint40 val = 1;
        return val;
    }
}
