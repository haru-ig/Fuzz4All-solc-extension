pragma solidity ^0.8.0;
contract Modul {
    uint constant test2 = 1347;
    uint constant test3 = 100;
    uint constant test = 1000;
    function solve() private pure returns (uint r) {
        if (
            test2 < test3
        ) {
            r = 2;
            if (
            test < test3
            ) {
                return test3;
            } else {
                return 1;
            }
            return r;
        } else {

            for (i = test2; i < test3; i++){
            }
            r = 2;
        }
    }
}


pragma solidity >=0.4.24 <0.8.0;


library Bytes32Library {

    bytes32 constant zero = 0x0000000000000000000000000000000000000000000000000000000000000;
}





function bytes32Equals(bytes32 x, bytes32 y) public pure returns (bool) {
    return x == y;
}


library StringUtils {
    enum State {
        Initial,
        ReadyToProcess,
        Processing,
        Error
    }

    struct Buffer {
        bytes memory _buffer;
        uint _bufferLength;
        uint _bufferIndex;
        uint _chunkIndex;
        uint _writePointer;
    }

    function isEmpty(string memory _s) public pure returns(bool) {
        uint len = _s.length;
        for(uint i = 0; i < len; i++) {
