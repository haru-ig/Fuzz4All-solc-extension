pragma solidity ^0.8.0;
contract MixedRestrict {
    function set() public {
        uint b1;
        unchecked { uint s = 0; s += 48; b1 = uint16(s + 1); }
        uint overflow;
        unchecked { uint s = uints; s += 48; overflow = uint(s + 1); }
        uint underflow;
        unchecked { uint s = uints - uints; s += uint(s + 1); }
        (uint16 b2, uint s) = safeAdd ( s, s);
        uint overflow2;
        unchecked { uint s = uints - s; s += 48; overflow2 = uints - s; }
        uint underflow2;
        unchecked { uint s = uints - uint(uints - uints); s += s; }
        (uint16 b3, uint s) = safeAdd ( s, overflow);
        uint overflow3;
        unchecked { uint s = uints - (uints - 48); s += s; }
        uint underflow3;
        unchecked { uint s = uints - uints; s += uint(uints - uints - uints); }
        (uint16 b4, uint s) = safeAdd ( s, overflow2);
        uint overflow4;
        unchecked { uint s = uints - 0x07FFFFFFFFFFFFFFFFFFC; s += uint(uints - 0x07FFFFFFFFFFFFFFFFFFC); }
        uint underflow4;
        unchecked { uint s = uints - 0x17FFFFFFFFFFFFFFFFFFE; s += 513; }
        (uint16 b5, uint s) = safeAdd ( s, underflow);
        uint overflow5;
        unchecked { uint s = uints - uints; s += uints - uints; }
        uint underflow5;
        unchecked { uint s = uints - uints - uints; s += 0x1FFFFFFF * 0x10000000000000; }
        (uint16 b6, uint s) = safeAdd ( s, overflow3);
        uint overflow6;
        unchecked { uint s = uints - uints; s += s * 10; }
        uint underflow6;
        unchecked { uint s = uints - uints - uints; s += uints - uints - uints; }
        (uint16 b7, uint s) = safeAdd ( s, underflow2);
        uint overflow7;
        unchecked { uint s = uints - uints; s += s * s
