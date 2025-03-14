pragma solidity ^0.8.0;
contract C6 {
    uint private x;
    function getuint() public pure returns (uint) {
        uint y = (uint(1234)) + 1;
        uint z;
        assembly {
            y := zero
        }
        return y;
    }
}
