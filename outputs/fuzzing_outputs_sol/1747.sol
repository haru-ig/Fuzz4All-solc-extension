pragma solidity ^0.8.0;
contract FallbackMutated {
    function getCaller () public view returns ( IFunctionWithFallbackMutated) {
        return IFunctionWithFallbackMutated ( msg.sender );
    }
}

pragma solidity ^0.8.0;

library Strings {
    uint8 internal constant _NULL_BYTE = 0;
    function contains(string memory s, bytes memory source) internal pure returns (bool) {
        bytes memory cs = s.bytes;
        uint min = 0;
        uint len = cs.length;
        uint src;
        while (len > min) {
            src = cs[min++];
            if (source[src] == _NULL_BYTE) return true;
        }
        return false;
    }
}
contract FallbackMutatedCaller {
    string private __storage;

    constructor(string memory _storage) {
        __storage = _storage;
    }


    function callWithFallback() public pure {
        bytes32 str;
        assembly {
            str := mload(0x40)
        }
        uint len;
        assembly {
            len := mload(add(str, 0x20))
        }
        bool containsResult;
        assembly {
            containsResult := contains(add(str, 0x20), mload(0x40))
        }
        assert(containsResult);
        if (bool(uint(uint8(len - 1)))) {
            len = len - 1;
            while (len >= 0 && len <= 16383 && len > 1) {
                assembly {
                    mstore8(add(add(str, len), 9), 0)
                }
                len = len - 1;
            }
        }
    }
}
