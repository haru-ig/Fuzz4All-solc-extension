pragma solidity ^0.8.0;

pragma experimental ABIEncoderV2;
contract FallbackData {
    uint256 constant public A = 100;
    struct Data {
        uint8 x;
        address payable y;
        bytes32 z;
        uint8 w;
    }
    Data memory structData;
    string memory str;
    uint64 constant public B = 128;
    struct Data2 {
        uint32 m;
        uint8 x;
        bytes bytes32 z;
        bytes32 l;
    }
    Data2 memory data2;
    uint[] memory nonEmptyArray;
    constructor() {
        calldata = 32 * 100;
        structData = Data({ x: 15, y: address(this), z: keccak256("Bytes32"), w: 64 });
        str = "hi";
        data2 = Data2({ m: C, x: 10, z: keccak256("Bytes32"), l: keccak256("a") });
        nonEmptyArray = new uint[](5);
    }

    function getStructData() public view returns (Data memory) { return structData; }
    function getDataOf(Data memory data) public view { return data; }
}

pragma experimental ABIEncoderV2;
