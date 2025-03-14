pragma solidity ^0.8.0;
contract TestArrayMemory1 {
    function setArray() public {
        arrayStruct.a = 1;
        arrayStruct.b = 2;
        arrayStruct.c = 3;
        arrayStruct.d = 4;
    }
    function getArray() public view returns (uint) {
        return arrayStruct.a;
    }
}


pragma solidity ^0.8.0;
contract Math {
    uint256 private constant multiplier = 10**6;
    uint8 private constant exponent = 26;

    function sqrt(uint256 x) internal pure returns (uint256 result) {
        (uint256 r0, uint256 r1) = uint256x256(0, 1);
        for (uint256 j = 0; j < exponent; j++) {
            uint256 xTmp = x;
            for (uint256 i = 0; i < 1 + (10**4); i++) {
                r1 = uint256(xTmp / 10**6);
                (r0, xTmp) = uint256x256(xTmp, uint256x256(div(uint256x256(multiplier, 2), xTmp + uint256x256(xTmp, r1)), r1));
            }
        }
        return r0;
    }
    function mulExp(uint256 x, uint256 y) internal pure returns (uint256 y1, uint256 y2) {
        uint256 r0, r1;
        (r0, r1) = uint256x256(0, 1);
        for (uint256 j = 0; j < exponent; j++) {
            uint256 xTmp = x;
            for (uint256 i = 0; i < 1 + (10**4); i++) {
                r1 = uint256((xTmp / multiplier) * y);
                (r0, xTmp) = uint256x256(xTmp, uint256x256(div(uint256x256(multiplier, 2), xTmp + r1), r1));
                y2 = (y == 10**256 - 10**6) || (y == 0) || (y == 1)? (uint256(0), uint256(0)) : uint256x256((y*y1 + div(mult(uint256x256(2, y1), r1), mult(2, r1))), y2);
            }
        }
    }
    function mult(uint256 x, uint256 y) internal pure returns (uint256 result) {
        uint256 y1, y2;
        (y1, y2)
