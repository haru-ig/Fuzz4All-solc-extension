pragma solidity ^0.8.0;
contract Convert {
    function bytes4(string memory _signature) internal pure returns (bytes4) {
        bytes memory prefix = "\6570656B";
        assembly {
            return add(mload(add(add(add(prefix, 0x20), add(4, _signature))), 0xc4))
        }
    }
}
