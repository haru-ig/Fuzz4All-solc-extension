pragma solidity ^0.8.0;
contract C3 {
    uint private x;

    function getuint() public view returns (uint) {
        uint x;
        assembly {
            x := x
        }
        return x;
    }
}
