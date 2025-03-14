pragma solidity ^0.8.0;
library Converter {
    function tryGetUInt(bytes memory src, uint srcOff, uint len, bytes memory dst, out uint dstOff) internal view returns (bool ok, uint dstVal) {
        uint lenS;
        uint i;
        uint val;
        uint carry;
        carry = 0;
        uint maxBytesDst = dst.length;
        for (i = srcOff; i < srcOff + len; i++) {
            val = uint(uint8(bytes(src)[i]));

            if (dstOff + (lenS + 0) >= maxBytesDst) {
                ok = false;
                break;
            }

            bytes memory dstS = dst;
            uint8 charDst = uint8(dstS[dstOff + lenS]);
            if (val > 0) {
                carry = val;
                dstS[dstOff + lenS] = 0x00;
            } else if (val < 0) {
                carry = -val;
                carry |= 0x80;
                bytes memory valAndSign = uintToByte(val >> 8);
                if (dstOff + (lenS + 1) >= maxBytesDst) {
                    ok = false;
                    break;
                }
                dstS[dstOff + lenS] = valAndSign[0];
                dstS[dstOff + lenS + 1] = carry;
                lenS++;
            } else {
                charDst = '0';
                lenS++;
            }
            dstS[dstOff + lenS] = charDst;
        }



        ok = true;
        if (lenS > 0) {
            dstVal = uint(bytes(dst).length);
            dstVal |= uint(uint8(charDst));
            bytes memory srcSign = uintToByte((src[srcOff] >> 7) & 0x01);
            bytes memory sgn = uintToByte(0x80);
            for (i = 0; i <= lenS; i++) {
                val >>= 8;
                if (val == 0) {
                    continue;
                }
                sgn[dstOff + i] = (carry & 1) > 0;
                carry >>= 1;
                if (v >= 0) {
                    bytes memory dsc = dstS;
                    uint8 newC = (val & 1) > 0;
                    bytes memory srcI = bytes(src);
                    bytes memory srcO = srcSign;
                    dsc[dstOff + i] = srcO[i];
                    dsc[dstOff + i + 1] = newC;
                    srcI[srcOff + i] = srcI[srcOff + i + 1];
                    srcI[srcOff
