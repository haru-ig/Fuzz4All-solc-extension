pragma solidity ^0.8.0;
interface I2 {
    function use(uint256 key, bytes4 functionSelector, bytes memory data1) external;
}
interface I3 {
    function use(uint256 key, bytes4 functionSelector, bytes calldata data1, bytes memory data2) external;
}
interface I4 {
    function use(uint256 key, bytes4 functionSelector, bytes calldata data1, bytes calldata data2, bytes memory data3) external;
}
interface I5 {
    function use(uint256 key, bytes4 functionSelector, bytes calldata data1, bytes calldata data2, bytes calldata data3, bytes memory data4) external;
}
interface I6 {
    function use(uint256 key, bytes4 functionSelector, bytes calldata data1, bytes calldata data2, bytes calldata data3, bytes calldata data4, bytes memory data5) external;
}
interface I7 {
    function use(uint256 key, bytes4 functionSelector, bytes calldata data1, bytes calldata data2, bytes calldata data3, bytes calldata data4, bytes calldata data5, bytes memory data6) external;
}
contract A {
    struct C {
        uint16 f1;
        uint256 f2;
        uint32 f3;
    }
    mapping(uint256 => uint256) memory public mapx;
    uint8[3] public b;
    mapping(uint256 => uint32[2]) public mapxx;
    function use(uint256 key, bytes4 functionSelector) public {



        b.length = 2;

        test1();

        mapx[1] = 1237;
        mapx[1] += 1237;
        mapx[1] += 1237;
        mapx[1] += 1237;
        mapx[1] += 1237;
        mapx[1] += 1237;
        mapx[1] += 1237;
        mapx[1] += 1237;
        mapx
