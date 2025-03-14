pragma solidity ^0.8.0;
interface B {
    function g() public pure returns (address);
}
contract C {
    function f() public pure returns (address) {
        return address(0x02);
    }

    function g() public pure returns (address) {
        return address(0x03);
    }
}
