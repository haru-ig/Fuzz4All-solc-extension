pragma solidity ^0.8.0;
contract C5 {
    uint private x;
    function getuint() public view returns (uint) {
        uint y = (uint(1234)) + 1;
        uint z;
        assembly {
            y := z
        }
        return y;
    }
}
