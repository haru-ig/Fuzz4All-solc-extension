pragma solidity ^0.8.0;
contract Memory {


    function getArray(
        bytes32 memoryIndex, uint offset
    )
        public
        view
        returns (bytes32 memory)
    {
        if (bytes(memoryIndex) == '') {
            return bytes32(uint(0));
        }
        uint sub = offset;
        uint div = 0;

        if (offset + memoryIndex.length > 0)
            div = memoryIndex[offset + memoryIndex.length - 1];

        if (div!= "0" && bytes(memoryIndex)[offset + memoryIndex.length - 1] == '.') {
            sub = uint(bytes(memoryIndex)[offset]) + uint(bytes(memoryIndex)[offset + 1]) * uint(Math.exp(uint(bytes(memoryIndex)[offset + 2]) * 0.7853982));
        } else {
            if (div!= "0") sub = uint(bytes(memoryIndex)[offset]) * uint(Math.pow(Math.exp(div), uint(sub))));
        }

        return bytes32(sub);
    }
