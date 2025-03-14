pragma solidity ^0.8.0;
contract C {
    function myFunction() public pure returns (uint256 v, uint256 r, uint256 s) {
        r = 0;
        s = 0;
        r = uint256(uint32(-106928054));
        v = uint256(uint32(-106928054));
        return (-uint256(r) - v, uint256(-106928054), uint256(uint32(-106928054) - uint32(r) - v));
    }
}
