pragma solidity ^0.8.0;
contract Caller {
    bytes32 constant public name = "Caller";
    bytes32 constant public symbol = "CALL";
    uint8 constant private codeLength = 200;
    function getData() public pure returns (bytes memory) {
        bytes memory data = new bytes(codeLength);
        data[0] = name.length;
        data[1] = 0;
        data[2] = symbol.length;
        data[3] = 0;
        uint i = 0;
        uint j = 0;
        for (; j < name.length; j++) {
            data[i+4] = name[j];
            data[i+5] = symbol[j];
            i+=6;
        }
        return data;
    }

    function () public pure {
        bytes memory message = getData();
        bytes memory messageHash = keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n", message));
        address contractAddress = type(address);
        assembly {
            let amount := sub(calldataload(4), mload(message))
            let target := and(calldataload(3), 0xff)
            let result := call(target, amount, add(contractAddress, 0x20), 10, 0, 0)
            let output := returndatasizer()
            returndatacopy(target, messageHash, 0, mload(message))
            let resultSize := mload(result)

            functionSelector := mload(functionselector)
            if eq(zero, resultSize) {
                if eq(functionSelector, 4) {
                    returndatacopy(calldata(0), mload(result), 0*32, 32)
                } else if functionSelector < 250 {
                    returndatacopy(calldata(mload(result)-32), mload(result), 0*32, output)
                } else {
                    let end := mload(calldata)
                    while lt(end, mload(message)) {
                        returndatacopy(calldata(end), mload(result), end, output)
                        end += 32
                    }
                }
            } else if ge(resultSize, 0) {
                let resultPtr := add(result, 32)
                let outputPtr := add(output, 32)
                let start := resultPtr
                while lt(resultPtr, add(result, eq(add(result, start), end))) {
                    returndatacopy(resultPtr, outputPtr, mload(result), output)
                    let end := resultPtr + 32
                    resultPtr += mload(result)
                    outputPtr += output
                }
            }

        }
    }
}
