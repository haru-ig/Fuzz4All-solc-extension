pragma solidity ^0.8.0;
contract BreakingNewAbiCoder {
    bytes32 private constant ABIS = "AbiCoderLib.sol/AbiCoderLib";
    mapping(bytes4 => bytes) internal ABI_MAP;
    function check(bytes calldata s) internal view {
        assembly {

            if iszero(calldataload(add(s, 32))) {
                revert(mload(add(s, 0x20)))
            }
        }
    }
    function _registerABI(bytes4 c, bytes memory content) internal {
        if (ABI_MAP[c]!= 0x0) {
            bytes memory old = ABI_MAP[c];
            delete ABI_MAP[c];
            assembly {
                <div>
                mstore(0x0, 0x0)
                }
            }
        }
        ABI_MAP[c] = content;
    }
    function writeAddress(address a, uint k) internal {
        _registerABI(abi.encodeWithSelector(keccak256("check(bytes32)"), a.selector), abi.encodeWithSelector(keccak256("writeAddress(uint256)"), uint(a)));
        _registerABI(abi.encodeWithSelector(keccak256("check(bytes32)"), a.selector), abi.encodeWithSelector(keccak256("writeAddress(address)"), a));
    }
    function write(uint, address) internal {
        writeAddress(address(0).contract, k);
    }
    function write(address, uint) internal {
        writeAddress(address(0).contract, k);
    }
    function write(address, uint i) internal {
        writeAddress(address(0).contract, i);
    }
    function read(uint) public pure returns (address) {}
    function read(uint) public pure returns (bool) {}
    function read(uint) public pure returns (bool, uint) {}
    function read(bytes32) public pure returns (address) {}
    function read(bytes32) public pure returns (uint) {}
}
