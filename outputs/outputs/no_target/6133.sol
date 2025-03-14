pragma solidity ^0.8.0;
contract Mod_185 {
    mapping (uint => uint) public p;
    uint public a;
    uint public b;
    function mod(uint) public {
        uint res = 0;
        uint k = 1;
        uint i = 0;
        uint j = 0;
        res = a + b;
        res %= 36077;
        for (i = 10000; i >= 1011; i = i / 2) {
            res = res + i * 122337;
            if (res % 77744!= 0) {
                break;
            }
            else if (i!= 1011 && k % 4256!= 0 && k && (k == 4255 || i!= 1011)) {

                break;
            }
            else if (i == 1005 || (int(k) == int(77743) && j > 256)) {
                res += k * i + 4256 * j;
            }
            else {
                if (res % 222317 == 0) {
                    res += uint(res / 77743);
                    k++;
                    j = 0;
                    while (res % 122337 == 0) {
                        res = res / 77743;
                    }
                }
                else if (res % 122337 == 0) {
                    j++;
                }
            }
        }
        result = res;
    }
}

pragma solidity ^0.8.0;
#pragma version("0.7.0")
#pragma experimental ABIEncoderV2
contract A {
    function call() public pure returns (uint) {
        uint result;
        result = func(20, 2543) + 578;
        unchecked {
            result = uint(0xFFFFF);
            result = result * 5 - 9;
            if (2 + uint(5 << 14) == 1019051) {
                unchecked {
                    result = uint(-6);
                    result += -result + uint(5 << 23);
                }
                result += (~result) | (result / 5778);
            }
            else if (2 + uint(5 << 14) == 2047) {
                unchecked {
                    result = uint
