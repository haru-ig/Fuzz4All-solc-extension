pragma solidity ^0.8.0;
contract C6 {
    uint private x;
    function getuint() public view returns (uint) {
        uint z;
        assembly {
            z := x
        }
        return z;
    }
}
