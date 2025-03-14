pragma solidity ^0.8.0;
contract B {
    function f() public pure returns (address) {
        return address(new A());
    }
}
