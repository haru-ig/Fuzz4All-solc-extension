pragma solidity ^0.8.0;
library MyLib {
    function f() public pure returns (uint) {
        return uint16(uint16(uint8(uint8(uint23(uint256(uint28(uint32(uint64(uint80(uint96(uint128(uint160(0x112233445566778899))))))))))))))/(uint256(uint14(uint3(uint6(uint8(uint16(uint32(uint80(uint256(uint28(uint8(uint23(uint256(uint28(uint32(uint256(uint32(uint256(uint80(uint96(uint128(uint81(uint65(uint83(uint95(uint812(uint8480))))))))))))))))}/uint19(uint19(uint19(uint19(uint19(uint19(uint32(uint80(uint256(uint28(uint62(uint28(uint32(uint8(uint16(uint80(uint96(uint128(uint81(uint53(uint83(uint95(uint9232))))))))))))))))))-(uint256(uint12(uint16(uint19(uint19(uint19(uint8(uint32(uint62(uint32(uint64(uint32(uint8(uint8(uint32(uint16(uint80(uint96(uint128(uint81(uint8(uint16(uint80(uint96(uint128(uint81(uint480))))))))))))))))}-uint256(int256(uint23(uint8(uint16(uint80(uint96(uint128(uint81(uint65(uint83(uint95(uint9480)))))))))))))>uint256(uint12(uint16(uint19(uint19(uint80(uint96(uint128(uint81(uint90(uint96(uint128(uint81(uint90(uint96(uint128(uint81(uint9500))))))))))))))));}

address myAddress;
function fun() public payable {
    myAddress = msg.sender;
}
function main() {
    fun();
    MyLib.f();
}
