pragma solidity ^0.8.0;
contract B {
    function g() public pure returns (bytes4) {
            return bytes4(0xa9059cbb);
    }
}
contract C {
    function g() public pure returns (address) {
            return address(B{});
    }
}
