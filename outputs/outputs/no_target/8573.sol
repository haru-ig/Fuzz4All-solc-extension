pragma solidity ^0.8.0;
contract NonChecked {
    function get(uint a, uint b) public view returns (uint) {
        byte[5] memory f = [10, 200];
        a = a + 1;
        return a;
        }
}
contract Compatible {
address a;
function get(uint a, uint b) public view returns (uint) {
    a = 1;
    b = b;
    return a + b;
}
}
