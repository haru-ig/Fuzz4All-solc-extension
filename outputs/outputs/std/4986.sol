pragma solidity ^0.8.0;
contract Convert {
    function bytes2uint64(bytes memory data) internal pure returns (uint256) {
        uint256 i = 0;
        for(uint256 j = 0; j < data.length; j++) {
            bytes1 b = data[j];
            uint256 x = uint256(uint8(b));
            if(x < 10) i = i*10 + x;
            else return uint256(i);
            i = i*16 + uint256(uint8(b));
        }
        return i;
    }
}
