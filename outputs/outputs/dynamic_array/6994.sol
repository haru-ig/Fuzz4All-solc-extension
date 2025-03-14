pragma solidity ^0.8.0;
contract Test5 {
    Foo[] memory _storageArray;
    function s() public pure returns (bytes memory) {
        return bytes(_storageArray[0].bar);
    }
}
