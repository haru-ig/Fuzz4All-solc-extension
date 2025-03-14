pragma solidity ^0.8.0;
contract ABICoderWrapperInterface {
    constructor() public {
    }
    function getSomeBytes() public view returns (bytes memory){
        return abi.encodePacked("abcde", "", "abcde");
    }
    function getSomeByteArrays() public view returns (uint[], uint[], bytes32[]){
        return new uint[](2){3, 5}, new uint[](3){1, 2, 5}, new bytes32[](5){"a", "b", "c", "d", "e"};
    }
}
