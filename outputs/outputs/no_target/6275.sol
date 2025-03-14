pragma solidity ^0.8.0;
contract MyContract {
    address public a;
    function getAddress(uint) public pure returns (address) {
        a = address(0);
        return a;
    }
}
