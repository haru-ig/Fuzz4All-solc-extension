pragma solidity ^0.8.0;
contract C4 {
    uint private x;
    function getuint() public view returns (
        uint, uint
    ) {
        uint x, y;
        assembly {
            x := 0x1234
        }
        return (x, x);
    }
}
