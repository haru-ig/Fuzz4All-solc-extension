pragma solidity ^0.8.0;

struct ContractRegistry {
    uint256 public _next;
}

library StringUtils {
    string private constant _hex = "0123456789abcdef";
    bytes32 private constant _prefixHex = keccak256("contractregistry:");

    function hash(string memory str) private pure returns (bytes32) {
        bytes32 hash = 0;
        for (uint256 i = 0; i < str.length; i++) {
            hash = keccak256(abi.encodePacked(hash, str[i]));
        }
        return hash;
    }

    function prefixHash(bytes32 hash) private pure returns (bytes32) {
        return keccak256(abi.encode(keccak256("contractregistry:"), _prefixHex, hash));
    }

    function hashAddress(address addr) private pure returns (bytes32 hash) {
        bytes memory b = abi.encode(addr);
        hash = keccak256(abi.encode(keccak256("contractregistry:"), hash, b));
        return hash;
    }

    function getHexAddress(bytes32 hash) private pure returns (address) {
        bytes memory b = abi.encode(_prefixHex, hash);
        bytes32 suffix = hash;
        bytes32 addressHash = keccak256(abi.encode(keccak256("contractregistry:"), hash, b));
        while (addressHash!= suffix) {
            addressHash = keccak256(abi.encode(keccak256("contractregistry:"), suffix, addressHash));
        }
        bytes memory a = abi.decode(b, (address));
        bytes memory x = bytes{ 0,1,2,3,4,5,6,7,8,9,
                                                    10,11,12,13,14,15,16,17,18,19,20,21,22,23 };
        for (uint256 i = 0; i < 20; i++) addressHash = keccak256(abi.encode(keccak256("contractregistry:"), a, b, x[i]));
        if (addressHash == suffix) return address(uint160(keccak256(abi.encode(suffix, a))));
        return (address(uint160(uint160(hash))));
    }

    function decode(bytes memory source)
        internal
        pure
        returns (
            bytes32 prefix,
            bytes memory rest,
            bytes memory content
        )
    {
        if (source.length <= 20) {
            return (0x0, source, bytes memory());
        }
        uint256 offset = 20;
