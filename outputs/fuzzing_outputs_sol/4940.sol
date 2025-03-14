pragma solidity ^0.8.0;
contract ContractWithFallback {
    address payable public fallbackAddress;

    constructor(address payable _fallbackAddress) {
        fallbackAddress = _fallbackAddress;
    }

    fallback() external payable {
        fallbackAddress.transfer(msg.value);
    }

    receive() external payable {
        fallbackAddress.transfer(msg.value);
    }
}
contract Caller {
    bytes32 public hash;
    address public payable fallbackAddress = payable(address(new EmptyFallback()));

    constructor() {
        hash = keccak256(abi.encodePacked("fallback() external payable {}"));
    }

    function callWithFallback() external returns (bytes memory) {
        bytes memory data = abi.encodePacked(keccak256(abi.encodePacked("fallback()")));

        hashAddress(fallbackAddress.call{value: 1 ether}(data));
    }

    function callDefaultFallback() external returns (bytes memory) {
        bytes memory data = abi.encodePacked(keccak256(abi.encodePacked("fallback(uint32)")));

        hashAddress(fallbackAddress.call{value: 1 ether}(data));
    }

    function callTransferFallback() external returns (bytes memory) {
        fallbackAddress.transfer.value(1 ether)(msg.data);
    }

    function callPayableFallback() external returns (bytes memory) {
        bytes memory data = abi.encodePacked(keccak256(abi.encodePacked("fallback(uint32,bytes32)")));

        bytes32 hash = keccak256(abi.encodePacked(address(fallbackAddress), 1, hash));

        fallbackAddress.call{value: 1 ether}(data, hash);
    }

    function hashAddress(bytes memory dataHash) internal {
        bytes32 data;
        bytes32 result;

        assembly {

            result := mload(0x40)
            mstore(0x40, add(dataHash, 32))


            let hash := __keccak256(0, add(dataHash, 32), 32)


            mstore(data, hash)
        }

        return data;
    }
}
