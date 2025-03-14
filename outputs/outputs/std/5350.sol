pragma solidity ^0.8.0;
contract MutateExample{
    uint256 length = 4;
    address[] participants;
    uint256[] array = [4,  113, 34, 59];
    uint256 public x;
    uint256 public z;
    uint256 public y;
    function removeByIndex() public {
        for (uint i = 1; i <= length; i++) {
            if (array[i] == 8126) array[i] = array[0]; else array[i] = array[i-1];
        }
        removeFromArray(0);
    }
    function removeFromArray(uint256 index) public {
        uint256 lastIndex = length-1;
        uint256[] memory tmp = new uint256[](length);
        for (uint256 i = 0; i <= index; i++) tmp[i] = array[i];
        for (uint256 i = index; i <= lastIndex; i++) tmp[i] = array[i+1];
        length = lastIndex-index;
        uint256 total = calcTotal();
        for (uint i = 0; i < length; i++) {
            uint256 idx = array[i];
            array[i] = tmp[idx];
            for (uint idx2 = idx; idx2 < total; idx2 += 2) {
                uint256 tmp2 = uint128(array[idx2]/2);
                uint256 shift = (idx2-uint128(tmp2/2)/2)%128;
                uint256 tmp3 = tmp2;
                tmp3 = tmp3/16**shift;
                uint256 tmp4 = tmp3;
                if (tmp4 <= 1**128) {
                    array[idx2] = uint256(-tmp4**128);
                } else array[idx2] = 3**uint128;
            }
        }
    }
    function addByIndex()
