pragma solidity ^0.8.0;
contract Mutated{

    uint[] memory oldArray;
    uint256[140] memory oldMultiplicationArray;
    uint256[50][] memory newArray;
    uint[8][3] memory arrayToMultiplication;
    uint[] public notModifiedArray;
    uint256[10] memory multi1;
    uint256[10] memory multi2;

    function multiplyArrays() public {
        newArray[0][0] = 1;
        newArray[0][1] = mul(oldArray[0], oldArray[0]);
        newArray[0][2] = mul(oldMultiplicationArray[0], 2);
        for(uint256 i = 1; i<oldArray.length; i++) {
            uint256 newValue = mul(mul(oldArray[i], 4), 3);
            newArray[i][0] = oldArray[i];
            newArray[i][1] = newValue;
            newArray[i][2] = mul(newValue, 2);
        }
    }

    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if(a == 0)
            return 0;
        uint256 product = a;
        for (uint8 i = 1; i < b; i++) {
            product *= a;
        }
        return product;
    }

    function changeMultiplicationArray() public {
        multi1[1] = multi(multi1[1], multi2[1]);
        for (uint i = 2; i < multi2.length; i++) {
            uint256 newValue = 1;
            uint256 old = multi1[i];
            newValue = multi(newValue, old);
            multi1[i] = old;
            multi2[i] = newValue;
        }
        multi1[0] = multi(multi1[0], multi2[0]);
    }

    function changeOldArrayToNewValue() public {
        for (uint i = 0; i < oldArray.length; i++) {
            uint256 oldValue = oldArray[i];
            uint256 newValue = mul(mul(oldValue, oldValue), oldValue);
            oldArray[i] = newValue;
        }
    }

    function multiplyOldArray() public {
        for (uint i = 0; i < oldArray.length; i++) {
            uint256 newValue = mul(oldArray[i], oldArray[i]);
            oldArray[i] = newValue;
        }
    }

    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if(a == 0)
            return 0;
        uint256 product = a;
        for (uint8 i = 1; i < b; i++) {
            product *= a;
        }
        return product;
    }

    function getOldArray() public view returns (uint256[] memory) {
        return oldArray;
    }

    function getNewArray() public view returns (uint2
