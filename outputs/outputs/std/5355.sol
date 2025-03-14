pragma solidity ^0.8.0;
contract C {
    function f() public pure return(bool, uint256) {
        return (false, 1);
    }
    function g() public pure return(address) {
        return (0x00, 0x00);
    }
    function h() public pure return(uint8) {
        return (0);
    }
    function i(address a) public pure return(uint256) {
        return (0);
    }
    function j(uint256 a) public pure return(bool) {
        return (true);
    }
    function k() public pure returns(address) {
        return (0x00, 0x00);
    }
    function l() public pure returns(uint256) {
        return 0;
    }
}
