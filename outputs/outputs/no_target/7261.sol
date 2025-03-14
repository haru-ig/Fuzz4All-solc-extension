pragma solidity ^0.8.0;
contract AbiCoderMutator {
    function safeEncodeTransfer(address to, uint value, bytes memory data, uint gas) internal pure {
        bytes memory empty = bytes(0);
        uint empty_id = 0;
        (uint returnDataLength, uint returnDataLengthPtr, uint emptyDataLength, uint emptyDataLengthPtr) =abi.decode(
            data,
            (uint, uint, uint, uint)
            );
        bool flag = false;
        for (uint i ; i < returnDataLength; i++) {
            empty[returnDataLengthPtr+i] = data[i];
            if(data[i] == empty_id) {
                flag = true;
            }
        }
        assert(flag);
    }
}
