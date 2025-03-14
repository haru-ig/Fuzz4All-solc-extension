pragma solidity ^0.8.0;
contract test2{
    function get_2() public pure returns(uint40) {
        uint40 val = get1(0);
        return val;
    }
    function get1(uint40 x) public pure returns(uint40) {
        uint40 val = 2;
        return val;
    }
}
