pragma solidity ^0.8.0;
contract MutatingContract {
    uint256 private data;
    bytes32 key;
    constructor (uint256 _data, bytes32 _key) {data = _data;}
    function getKey() public view returns(bytes32) {
        return key;
    }
    function getPublicData() public view returns(uint256) {
        return data;
    }
    function getPrivateData() public view returns(uint256) {
        return data;
    }
    function getKeyData() public view returns(uint256) {
        return data;
    }
    function setData(uint256 _data) public {data = _data;}
    function setKey(bytes32 _key) public {key = _key;}
    function setPublicData(uint256 _data) public {data = _data;}
    function setPrivateData(uint256 _data) public {data = _data;}
    function setKeyData(uint256 _data) public {data = _data;}
}
