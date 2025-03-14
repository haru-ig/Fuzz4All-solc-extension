pragma solidity ^0.8.0;
contract MyContract {
    function getAddress(uint) public pure returns (address) {
        return MyContract.getAddress(address(0));
    }
}
