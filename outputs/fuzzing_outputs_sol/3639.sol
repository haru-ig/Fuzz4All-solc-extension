pragma solidity ^0.8.0;
contract MutateSemantic5Caller5 {
    mapping(uint64 => uint) internal data;
    function modifyC(uint256 x, uint y) public pure returns (uint256) {

        uint64 newHash = keccak256(abi.encode(x, y));
        uint storedHash = data[newHash];
        if (storedHash == 0) {
            uint storedData = modifyC(x, y);
            data[newHash] = storedData;
            return storedData;
        } else {
            return storedHash;
        }
    }
}
