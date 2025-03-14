pragma solidity ^0.8.0;
library EthAddr
{
    bytes32 constant private constant ETHEREUM_ADDRESS_DEFAULT = keccak256('<addr1>');

    function encodeEtherAddress(address x) internal pure returns(address) {
        require(x!= address(0), 'invalid-etheraddress');
        bytes32 hashOf(address addr)= x == ETHEREUM_ADDRESS_DEFAULT? ETHEREUM_ADDRESS_DEFAULT:keccak256(abi.encodePacked(bytes32(uint256(keccak256(abi.encodePacked(bytes32("0x"),hex'2020201FFFFFFFFFFFFFFF')))))));
        return address(hashOf);
    }
}
