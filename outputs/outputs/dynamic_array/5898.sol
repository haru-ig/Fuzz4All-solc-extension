pragma solidity ^0.8.0;
contract Test1865X {
    function set(uint16[3][] memory x_set) public {
        delete x_set[1][0];
        x_set[1][0] = 0x3;
        x_set[1][1] = a;
    }
    function get() public view returns (uint16[3][] memory) {
        uint16[3][] memory a_get;
        a_get[0][0] = a;
        delete a_get[0][0];
        a_get[1][1] = 0x4;
        a_get[1][0] = x_set[1][0];
        return a_get;
    }
}
