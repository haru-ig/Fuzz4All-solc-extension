pragma solidity ^0.8.0;
library LibUser {

    bytes32 internal constant PREFIX_ABI_PREFIX = keccak256("abi-");

    function encodeABI(bytes32 _prefix, bytes memory _abi) internal pure returns(bytes memory) {

        assembly {
            let sLen := mload(add(_abi, 0x20))
            let sPtr := mload(add(_abi, 260))

            sstore8(sPtr, sLen)
            sstore(add(sPtr, 0x1), _abi)

            sstore(sub(sPtr, 0x20), sPtr)
            sstore(sub(sPtr, 0x30), 36)

            sstore(sub(sPtr, 0x20), sPtr)
            sstore(sub(sPtr, 0x30), 36)
        }
    }


    function decodeABI(address _addr, string memory _abi) internal payable returns(bytes memory _abi) {



        require(bytes(_abi).length == 36, "Wrong ABI length");

        bytes memory _prefixBytes = new bytes(PREFIX_ABI_PREFIX.length);
        bytes memory _abiBytes = new bytes(abi.sizeof(_abi));
        for (uint256 i = 0; i < PREFIX_ABI_PREFIX.length; i++) {
            _prefixBytes[i] = bytes1(_abi[i * 2]);
        }

        bytes memory _abiPrefixed = new bytes(PREFIX_ABI_PREFIX.length + 36 + 1);
        _abiPrefixed = abi.encodePacked(_prefixBytes, _abiBytes);

        delete _abiPrefixed[0];

        bytes memory _abiDecoded = abi.decode(_abiPrefixed, (bytes[](0)));

        _abi = _abiDecoded[0];
    }


}
