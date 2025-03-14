pragma solidity ^0.8.0;
contract TestMutator2 {
    function set(uint40 x, uint40 y) public {
        set(x);
        get1(x, y);
        get2(x, y);
    }
    function get0() public pure returns(uint40) {
        uint40 val = get1(0, 0);
        return val;
    }
    function get1(uint40 x, uint40 y) public pure returns(uint40) {
        uint40 val = get2(x, y);
        return val;
    }
    function get2(uint40 x, uint40 y) public pure returns(uint40) {
        uint40 val = 1;
        return val;
    }
}
