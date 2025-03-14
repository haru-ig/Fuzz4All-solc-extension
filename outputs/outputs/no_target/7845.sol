pragma solidity ^0.8.0;
contract TestMutator {

    function set(uint40 x) public {
        set(x);
        get1(x);
    }
    function get0() public pure returns(uint40) {
        uint40 val = get1(0);
        return val;
    }
    function get1(uint40 x) public pure returns(uint40) {
        uint40 val = 1;
        return val;
    }
}
