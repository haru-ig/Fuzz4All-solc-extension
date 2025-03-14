pragma solidity ^0.8.0;
contract Mutate12 {
    uint[1e12] _uintArray;
    constructor(uint[] memory _uint) {
        _uintArray = _uint;
    }
}

pragma solidity ^0.8.0;
contract Bip32 {
    bytes32[4] public chainCode;
    constructor(bytes memory coin, bytes memory chaincode, bytes memory path) {
        require(path.length >= 2 && path.length % 3 == 0, "!PATH_TOO_SHORT or!PATH_TOO_LONG");
        require(_checkPath(path), "!NOT_CORRECT_PATH");
        chainCode[0] = bytes32(uint160(keccak256(abi.encodePacked(coin, chaincode))));
        for(uint i = 1; i < path.length; i++) {
            chainCode[i] += bytes32(uint160(keccak256(abi.encodePacked(
                    bytes1(path[i - 1]), path[i], chainBase(), path[i + 1]))));
        }
    }

    function chainCode() public view returns (bytes memory) {
        return bytes(keccak256(abi.encodePacked(chainCode)));
    }

    function chainBase() internal view returns (bytes4) {
        if (chainCode.length == 0) return 0;
        if (chainCode.length == 1) return 0;
        bytes memory input = chainCode;
        bytes memory output = new bytes(32);
        for(uint i = 0; i < input.length - 1; i++) {
            output[i] = bytes1(input[i + 1]);
        }
        return abi.decode(output, (bytes4));
    }

    function _checkPath(bytes memory path) internal view returns (bool) {
        if (path[0]!= 0x00) revert "!ROOT_NOT_INITIALIZED";
        if (path.length % 3!= 1) revert "!TRAILING_DATA_MISSING";
        for(uint i = 1; i < path.length - 1; i += 2) {
            if (convert(chainCode[i])!= path[i + 1]) return false;
        }
        return true;
    }

    function convert(bytes32 _id) internal view returns (bytes memory) {
        bytes memory id = bytes(_id);
        bytes memory result = new bytes32[](id.length + 1);
        result[0] = 0x00;
        for(uint i = 1; i < id.length; i++) {
            result[i + 1] = bytes1(id[i]);
        }
        return result;
    }
}
