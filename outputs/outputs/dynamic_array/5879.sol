pragma solidity ^0.8.0;
contract Test1865III {
    uint16 x = 2;
    function set(uint16 number) public {
        x = number;
    }

    function get() public view returns (uint16) {
        return x;
    }
}
