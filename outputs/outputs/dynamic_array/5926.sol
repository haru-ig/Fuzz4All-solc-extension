pragma solidity ^0.8.0;
contract Test337904 {
    uint16[7] x;
    uint16 a = 0x2;
    uint256 index = 0;
    function set(uint16[3][] memory y_get, uint256 i_put) public {
        x[0] = y_get[0][0];
        x[1] = y_get[i_put][0];
        a = x[0];
    }
    function get(uint256 i_get) public view returns (uint16[3][] memory) {
        uint16[3][] memory a_get;
        a_get[0][0] = x[0];
        a_get[1][0] = x[1];
        return a_get;
    }
}
