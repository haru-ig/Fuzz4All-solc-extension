pragma solidity ^0.8.0;
contract MutateSemantic6Caller2 {
    bytes32 immutable _c = keccak256('c');
    mapping(bytes32 => uint256) public immutable _cStore;

    function modifyC(uint256 x, uint256 y) public payable {
        _cStore[_c] = _cStore[_c] + y;
        _;
    }
}
