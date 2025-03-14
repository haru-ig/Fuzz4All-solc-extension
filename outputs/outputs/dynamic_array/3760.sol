pragma solidity ^0.8.0;
address public receiver;
contract B {
    address[] calldata addresses;
    function f() public pure returns (address) {
        return receiver;
    }
    receive() external {
        for(uint i = 0; i < addresses.length; i++) {
            receiver = addresses[i];
        }
    }
}
