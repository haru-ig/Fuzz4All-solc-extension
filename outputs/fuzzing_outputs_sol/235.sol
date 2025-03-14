pragma solidity ^0.8.0;
contract B {
    mapping(bytes32 => uint) private storageData;
    function getData(bytes32 key) public constant returns (uint) {
        return storageData[key];
    }

    function setData(bytes32 key, uint value) public {
        storageData[key] = value;
    }
}
function C() public {
    B storage instance = B(0x20);
    instance.setData(bytes32(0), 1);
    instance.setData(bytes32(0), 3);
    assembly {
        mstore(0x40, 0x00)
    }
}
