pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract C6_19_3 {
    address[] public a;
    address payable payableArray;
}
contract ModularMultiplicativePrimeGenerator {
    uint private exponent;
    bytes32 private x;
    bytes32 private y;
    function nextPrime(uint a) public view returns (uint) {
        bytes32 x = bytes32(a);
        bytes32 xInv = 0x00;
        bytes32 x2Inv = bytes32(2**252);
        y = bytes32(2**252);
        while ((x > y) and (x >= 2)) {
            if ((y%x) == 0)
                return y;
            y /= x;
            xInv *= xInv;
            while ((xInv & bytes32(2**252 - 1)) == bytes32(2**252 - 2)) {
                xInv >>= 1;
            }
            x2Inv *= x2Inv;
        }
        x *= x2Inv;
        x %= bytes32(2**252);
        x += 2;
        x %= bytes32(2**252);
        exponent = xInv;
        return x;
    }
    function Get(uint x) public view returns (uint, uint) {
        uint a = 6;
        uint d = 3;
        while (a < x) {
            d = nextPrime(2*d);
            a *= d;
        }
        return (a, d);
    }
    function GetHash(uint x) public view returns (bytes32) {
        uint, uint a, uint d = nextPrime(3);
        while ((a^d) > x) {
            a = nextPrime(2*d);
            d = nextPrime(2*d);
        }
        return hash(uint(bytes(bytes32(a ^ x)))));
    }
    function Generate(uint a) public returns (string memory) {
        uint length = a.toHexString().length;
        uint d = nextPrime(2**(length-1));
        uint a1bit = a.toHexString().substring(a.toHexString().length-1, a.toHexString().length);
        uint a1 = hexStringToUint(a1bit);
        uint m = 0;
        uint p = nextPrime(2)*(a*2);
        bool found = false;
        uint result = 0;
        while (!found) {
            m = nextPrime(2)*(a*2);
            if (m % p == 1 && m > 1) {
                found = true;
                result = m;
            }
        }
        nextPrime(length);
        m = 0;
        p = nextPrime((length-2)*2 + 1);
        found = false;
        result = 0;
        while (!found) {
            m = nextPrime(2);
            if (m % p == 1 && m > 1) {
                found = true;
                result = m;
            }
        }
        if(a1)
            return convertFromInteger(result) + "-" + convertFromInteger(d)+ "
