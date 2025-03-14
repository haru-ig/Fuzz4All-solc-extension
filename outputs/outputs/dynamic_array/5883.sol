pragma solidity ^0.8.0;
contract Test1865IV {
    uint128 x = 2;
    function set(uint128 number) public {
        x = number;
    }
    function get() public view returns (uint128) {
        return x;
    }
}
