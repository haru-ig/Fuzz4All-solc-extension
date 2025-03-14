pragma solidity ^0.8.0;
contract Convert {
    function reverseString(string memory _toreverse) internal pure returns (string memory _result) {
        assembly {
        _result := mload(add(_toreverse, 32))
        mstore(add(_toreverse, 32), mload(0x40))
        mstore(0x40, mload(add(_toreverse, 32)))
        }
    }
    function convert(string memory _old, string memory _new) public pure returns (uint) {
        return uint(bytes(_old)[0]);
    }
}
