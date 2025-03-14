pragma solidity ^0.8.0;
uint64 constant initIB = 1;
contract QB {
    enum IA {
        SENTINEL,
        YES,
    }
    uint64 constant initIB2 = 3;
    uint64 IB;
    uint64 IB2;
    IA state;
    bytes8 encoded;
    uint32 len;
    uint32 idx;
    constructor() public {
        IB2 = IB;
        IB2 = IB * IB * initIB + IB * IB2;
        state = IA.SENTINEL;
        encoded = "Hi!";
        len = uint8(8);
    }
    function update() public {
        state = IA.YES;
        IA encoded = IA.SENTINEL;
        if (state == IA.SENTINEL) {
            encoded = IA.YES;
            ib();
        } else {
            encoded = IA.NO;
            if (Ib == IB) {
                encoded = IA.SENTINEL;
            }
        }
        if (IB == IB + IB2) {
            index++;
        }
        while (encoded == IA.SENTINEL) {
            IB2 = IB2 + IB * IB + IB;
            if (Ib == IB2 + Ib * Ib + IB) {
                encoded = IA.YES;
            } else {
                for (; idx!= uint32(bytes8(encoded) - bytes8("\0"))); idx++) {
                    IB2 += IB * IB + IB;
                }
            }
        }
        IB2 = IB2 + IB * IB + IB;
        encoded = Ib;
        switch (len) {
            case 1:
                encoded = bytes8(encoded)[idx];
                if (encoded == "") {
                    encoded = uint8(1);
                }
                break;
            case 2:
                bytes memory bytes2 = bytes8(encoded)[idx];
                if (bytes2[0] == bytes2[0]) {
                    bytes2[0] = bytes2[0] - 1;
                    encoded = string(bytes2);
                    encoded = bytes32(uint27(bytes2));
                }
                break;
            case 3:
                bytes memory bytes3;
                byte memory temp;
                while (idx!= uint32(bytes3) - uint32(bytes8(""))) {
                    bytes3[idx] = bytes8(encoded)[idx];
                    if (bytes3[idx]!= "") {
                        temp = bytes8(bytes3)[idx][1];
                        bytes3[idx] = bytes3[idx] - 1;
                        bytes3[idx] = bytes8(bytes3)[idx]
