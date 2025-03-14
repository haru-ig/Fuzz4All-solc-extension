pragma solidity ^0.8.0;
contract test {
    function testIntConvertUint256(uint256 xInt) public view returns(uint256 yInt){
        return uint256(xInt);
    }

    function testIntConvertInt256(int256 xInt) public view returns(int256 yInt){
        return int256(xInt);
    }

    function testUintConvertUint16(uint16 xInt) public view returns(uint16 yInt){
        return uint16(xInt);
    }

    function testUintConvertUint256(uint256 xInt) public view returns(uint256 yInt){
        return uint256(xInt);
    }

    function testUintConvertInt256(int256 xInt) public view returns(uint256 yInt){
        return uint256(xInt);
    }
}
