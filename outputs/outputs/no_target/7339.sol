pragma solidity ^0.8.0;
contract NewAbiCoder {
    function decode(bytes memory input, string calldata functionSelector) internal pure returns (bytes memory output) {
        assembly {
            calldatacopy(input, 0, calldatasize)

            let result := delegatecall(
                gas(),
                address(this),
                0,
                input,
                calldatasize,
                functionSelector,
                0,
                returndatasize
            )

            output := mload(add(returndatasize, 0x20))
        }
    }
    function decode(bytes memory input, uint256 functionSelector) internal pure returns (bytes memory output) {
        bytes memory tmp = decode(input, functionSelector.toString());
        if (output.length == 0) {
            output = bytes(0);
        } else if (bytes(0).length > 32) {
            assembly {
                let m := mload(add(0x20, returndatasize))
                {
                    calldatacopy(m, 0, m)

                    let result := delegatecall(
                        gas(),
                        address(this),
                        0,
                        m,
                        m,
                        functionSelector,
                        0,
                        0
                    )


                    mstore(add(output, 0x20), mload(add(output, 0x20)))

                    output := add(output, returndatasize)
                }
            }
        }
    }
}

pragma solidity ^0.8.0;
contract BugsFixedAbiCoder {
    function encode(bytes memory input, string calldata functionSelector) internal pure returns (bytes memory output) {
        assembly {

            mstore(input, 0x01)

            {
                let m := mload(add(input, 0x20))
                  write(m, functionSelector)

                mstore(add(output, 0x20), mload(add(output, 0x20)))
                write(add(output, 0x20), 0x01)
            }


            mstore(add(output, 0x20), functionSelector)

            let result := delegatecall(
                gas(),
                address(this),
                0,
                output,
                add(output, 0x20),
                functionSelector,
                0,
                returndatasize
            )

            output := mload(add(returndatasize, 0x20))
        }
    }
    function decode(bytes memory input, uint256 functionSelector) internal pure returns (bytes memory output) {
        bytes memory tmp = decode(input, functionSelector.toString());
        if (output.length == 0) {
            output = bytes(0);
        } else if (bytes(0).length > 32) {
            assembly {
                let m := mload(add(0x20, returndatasize))
