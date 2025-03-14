pragma solidity ^0.8.0;
contract Mutator {
    uint x;

    receive() external payable {
        x = 9;
    }

    function modifyStorage() private {
        bytes memory b = (x > 1)? '1' : '0';
        x = bytesToUint(b);
    }

    function modifyGlobalStorage(bytes memory b) private {
        x = bytesToUint(b);
    }

    function modifyBoth() private {
        bytes memory b = (x > 1)? '1' : '0';
        modifyGlobalStorage(b);
        modifyStorage();
    }

    function bytesToUint(bytes memory inBytes) private pure returns (uint) {
        uint y;
        for (uint j = 0; j < inBytes.length; j ++) {
            y *= 256;
            y += inBytes[j] & 0xFF;
        }
        return y;
    }
}
