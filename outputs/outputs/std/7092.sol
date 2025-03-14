pragma solidity ^0.8.0;
contract B64Deformatter {
    function deFormatter() public pure
    returns (uint256, uint[] memory, uint[] memory){
        uint256[] memory temp;
        uint[] memory temp1;
        uint8 char;
        uint8 j = 0;
        (char, j) = function.accept("0123456789abcdef", j);
        uint256 decTemp;
        while (j < 8){
            decTemp |= uint256(char - 48) << (j * 4);
            (char, j) = function.accept("0123456789abcdef", j);
        }
        temp.length = 128/2;
        temp.push(decTemp);

        (char, j) = function.accept("0123456789abcdef", j);
        decTemp = 0;
        while (j >= 0){
            decTemp = uint256(uint10(decTemp) + 48 * uint256(char - 48)) << (j * 8);
            (char, j) = function.accept("0123456789abcdef", j);
        }
        temp1 = new uint[](128);
        uint tempIndex = 0;
        while (tempIndex < 128){
            temp1[tempIndex] = decTemp >> (tempIndex * 8);
            tempIndex ++;
        }
        return (decTemp, temp, temp1);
    }
}
