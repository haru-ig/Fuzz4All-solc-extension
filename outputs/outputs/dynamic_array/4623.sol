pragma solidity ^0.8.0;
contract Isolate {
    IsolateData private constant DATA = IsolateData(
        keccak256(abi.encodePacked("my data")) ^
       abi.encodePacked("my data") ^
       "my data" ^
       abi.encodePacked("my data") ^
       abi.encodePacked("my data") ^
       abi.encodePacked("my data") ^
       abi.encodePacked("my data"));

    function isolate() public pure returns (bytes32) {
        uint dataSize = DATA.data.length;
        while (dataSize < 2 * 256**2) {
            dataSize *= 2;
        }


        bytes32 result = DATA.data[dataSize - 1];
        while (dataSize < 2 * 256**3) {
            dataSize *= 2;
        }
        return result;
    }
}
