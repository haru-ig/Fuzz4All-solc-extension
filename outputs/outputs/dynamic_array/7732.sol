pragma solidity ^0.8.0;
contract Test6 {
        bytes memory data = "0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d8f82d5f64a2c83f7c8";
        uint256 length = 19;
        function check(uint256 a, uint256 b, uint256 c, uint[19] memory) public {
                uint x=0;
                uint256 i=0;
                while (true) {
                        uint8 arrBytes[19] = new uint8[](length);
                        uint arrUint256[19] = new uint[](length);
                        memcpy(arrBytes, data, length);
                        memcpy(arrUint256, data, 2);
                        x = a+b;
                        uint iVal=x%8;
                        arrBytes[i] = uint8(iVal);
                        arrUint256[i] = uint256(iVal);
                        if (a!=0 || b!=0 || c!=0) {
                                data = abi.encode(x, a, b, c);
                                break;
                        }
                        else{
                                i++;
                                data=uint8(data[i])|0xf0;
                        }
                        for (i=i*8; i<length*8; i=i*8+4) {
                                uint256 k=(uint(data) >> i)|0;
                                uint8 j=uint8(k>>7);
                                uint256 l=k&0x7f;
                                data=uint8(data[i])|0x80|l;
                                if (j!=7 || l!=j) {
                                        for (i=i*8; i<length*8; i=i*8+4) {
                                                uint256 arrBytesInx=uint256(((uint(data) >> i)&0xff) | (((uint(data) >> (i+1))+1) << 7) | uint8(((uint(data) >> (i+2))+3)<< 14));
                                                uint xInx=(uint8(arrBytesInx>>0) << 0)
