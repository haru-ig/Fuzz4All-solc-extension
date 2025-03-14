pragma solidity ^0.8.0;
library Array {
    function getMin(uint32[] array) internal pure returns (uint32 result) {
        result = array[0];
        for (uint32 i = 1; i < array.length; i++)
        {
            if (array[i] < result) {
                result = array[i];
            }
        }
    }
    function getMax(uint32[] array) internal pure returns (uint32 result) {
        result = array[0];
        for (uint32 i = 1; i < array.length; i++)
        {
            if (array[i] > result) {
                result = array[i];
            }
        }
    }
    function sum(uint32[] array) internal pure returns (uint32 result) {
        for (uint32 i = 0; i < array.length; i++) {
            result = result + array[i];
        }
    }
    function set(uint32[] memory a, uint32 index, uint32 element) internal pure {
        a[index] = element;
    }
    function get(uint32[] memory a, uint32 index) internal pure returns (uint32 result) {
        result = a[index];
    }
    function sort(uint32[] memory a) internal pure {
        uint32 len = a.length;
        uint32 i;
        uint32 j;
        for (i = 0; i < len-1; i++) {
            for (j = i+1; j < len; j++) {
                if (a[j] <= a[i]) {
                    a[i] = a[j];
                    a[j] = 0;
                }
            }
        }
        a[i] = 0;
    }
}

pragma solidity ^0.8.0;
library Multiprecision {
    function sumFloats(uint32 numerator, uint32 denominator) internal pure returns (uint32 result) {
        uint32 r = denominator % 10;
        uint32 q = denominator / 10*10;
        if (r!= 0){
            for (uint8 i = 0; i < 32; i++){
                uint32 t = denominator/(10**(i+1));
                uint32 e = denominator%10**(i+1);
                uint32 q2 = q * t;
                q = t;
                uint32 r2 = r*(10**(i+1));
                uint32 q2r = q2 + r2;
                uint32 new_r = ((q2r-q2)*(q2-r2))/(q2^2+e^2);
                r = new_r;
            }
        }
        result = numerator + uint32(r);
    }
}
