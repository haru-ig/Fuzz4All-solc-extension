pragma solidity ^0.8.0;
contract AddressManager {
    function getTokenAddressOf(address tokenAddress) public view returns(address) {
        tokenAddress = address(uint(uint80(uint(uint(uint256(tokenAddress)))))));
        return tokenAddress;
    }
}
