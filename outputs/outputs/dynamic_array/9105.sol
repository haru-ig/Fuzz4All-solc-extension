pragma solidity ^0.8.0;
interface IAddressable {
    function revert(uint8 _value) external;
}
contract ContractWithDynamicArrayStructAndArrays {
    uint8 public a1;
    uint8 public a2;
    uint8 public a3;
    uint8 public a4;
    uint8 public a5;
    uint8 public a6;
    uint8 public a7;
    uint8 public a8;
    uint8 public a9;
    uint8 public a10;
    uint8 public a11;
    uint8 public a12;
    uint8 public a13;
    uint8 public a14;
    uint8 public a15;

    uint8[] public arr;

    function ContractWithDynamicArrayStructAndArrays() public {
        a1 = 111;
        a2 = 12;
        a3 = 13;
        a4 = 14;
        a5 = 15;
        a6 = 16;
        a7 = 17;
        a8 = 18;
        a9 = 19;
        a10 = 20;
        a11 = 21;
        a12 = 22;
        a13 = 23;
        a14 = 24;
        a15 = 25;
        arr = new uint8[](16);
        arr[0] = 1;
        arr[1] = 2;
        arr[2] = 3;
        arr[3] = 4;
        arr[4] = 5;
        arr[5] = 6;
        arr[6] = 7;
        arr[7] = 8;
        arr[8] = 9;
        arr[9] = 10;
        arr[10] = 11;
        arr[11] = 12;
        arr[12] = 13;
        arr[13] = 14;
        arr[14] = 15;
        arr[15] = 16;
    }
    function toBytes() public view returns bytes32 {
        return bytes32(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(a1)) + uint256(a2)) + uint256(a3)) + uint256(a4)) + uint256(a5)) +
                    uint256(a6)) + uint256
