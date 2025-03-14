pragma solidity ^0.8.0;
 contract Array {
    struct Node { uint val; uint next; }
    Node head;
    function setVal(uint val) public { head.val = val; head.next = 0; }
    function setNext(uint elem, uint next) public { head.next = next; }
    function getVal() public view returns (uint) { return head.val; }
    function getNext(uint i) public view returns (uint) { return head.next; }
}
contract Convert {
    function toUint(uint a) public pure returns (uint) {
        return a;
    }
    function toString(uint a) public pure returns (string memory) {
        return abi.encodePacked(a);
    }
}
pragma solidity ^0.8.0;
contract Math {
    uint constant public MANTISSA_BITS = 8;

    function getPower(uint base, uint power) external pure returns (uint) {
        uint r = 1;
        for (; power > 0; power >>= 1) {
            if (power & 1 == 1) {
                r = multiply(r, base);
            }
            base = multiply(base, base);
        }
        return r;
    }

    function getPowerSafely(uint base, uint power) external pure returns (uint) {
        if (power == 0) {
            return 1;
        }
        uint r = power;
        while (power > 0) {
            if ((power & 1) == 1) {
                r = divide(divide(divide(r, base), base), base);
            }
            base = divide(base, base);
            power >>= 1;
        }
        return r;
    }

    uint constant public GCD_POWER = 10000;

    uint constant public MODULUS_POWER = 32;
    uint constant public MODULUS = 10 ** uint256(MODULUS_POWER);
    uint constant public MODULUS_MINUS_1 = (MODULUS - 1);
    uint constant public GCD_MIN = 20;
    uint constant public GCD_MAX = 100;

    function multiply(uint a, uint b) internal pure returns (uint) {
        if (a < 10) { return a * b; }
        else {
            uint t;
            assembly { t := a * b }
            return t;
        }
    }

    function divide(uint a, uint b) internal pure returns (uint) {
        require(b > 0);
      uint t;
      assembly { t := div(a, b) }
      return uint256(t);
    }

    function lcm(uint a, uint b) internal pure returns (uint) {
        require(b > 0);
      uint t;
      if a == 0 {
        t = b;
      } else
      if b > a {
        uint m = lcm(b, a);
        uint n = a / m;
