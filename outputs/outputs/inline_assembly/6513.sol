pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample54 {
    mapping(bytes32 => uint256) private _data;
    function setAB(uint256 d) public {
        _data[keccak256(abi.encodePacked("b"))) = d;
    }
}
