pragma solidity ^0.8.0;
contract Test33790 {
    uint16[7] x;
    uint16 a = 0x2;
    function set(uint16[3][] memory y_get) public {
        x[0] = y_get[0][0];
        a = x[0];
    }
    function get() public view returns (uint16[3][] memory) {
        uint16[3][] memory a_get;
        a_get[0][0] = x[0];
        return a_get;
    }
}
