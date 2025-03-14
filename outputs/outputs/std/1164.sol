pragma solidity ^0.8.0;
contract C1_Array {
    function arraySum() pure public returns (uint) {
        return 0;
    }
    function arrayMin() pure public returns (uint) {
        return 0;
    }
    function arrayMax() pure public returns (uint) {
        return 0;
    }
}
contract C2_Array {
    function arraySum() pure public returns (uint) {
        uint arrSum = 0;
        for (uint i = 0; i <= 1; i++) {
            arrSum += i;
        }
        return arrSum;
    }
    function arrayMin() pure public returns (uint) {
        uint arrMinTemp = uint(-1);
        for (uint i = 0; i <= 1; i++) {
            arrMinTemp = arrMinTemp < i? i : arrMinTemp;
        }
        return arrMinTemp;
    }
    function arrayMax() pure public returns (uint) {
        uint arrMaxTemp = uint(0);
        for (uint i = 0; i <= 1; i++) {
            arrMaxTemp = arrMaxTemp > i? i : arrMaxTemp;
        }
        return arrMaxTemp;
    }
}
