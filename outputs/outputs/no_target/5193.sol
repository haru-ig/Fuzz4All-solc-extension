pragma solidity ^0.8.0;
contract SimpleExample {
    function doSomething(bytes memory) public {
        bool result=false;
        result || result;
        do {
            return;
        }while(!result);
        unchecked {
            revert('Check');
        }
    }
}
address A,B;
address c=0xA12B3C;
bool D=true;
function f(bool p) public {
    if (p== false) {
        unchecked {
            revert('Check');
        }
    }
    bool A= (10>uint8(A));
    bool B= (10%uint8(B)== B);
    bool C= ~((10<uint8(B)) | D);
    bool D= (10==uint8(A)) | (A>uint8(B));
}
function g(uint p) public {
    A = (20001>uint160(0xFF)) & p;
    B = uint160(0xFF) & p;
    C = (uint160(0xFF) & p);
    D = (uint160(0xFF) >> 1) == p);
    uint D= int(uint160(0xFF));
}
function h() public {
    A = (A&B) ^ (uint160(0x010203) << D);
    B = ((C&D) | (A&uint160(0x040506)) | (uint160(4)));
    C = C | uint160(0xA0B1C2D3);
    F = B&A;
    F = F | uint160(6);
    F = B&((B>>10)*4) & (~4);
    F = F>>3;
    F = B>>> 2 & ((uint160(0xFFFF)*uint160(0xFFDAAA889988776655443322110FF00FFF)) >> (B>>10));
    F = B&(((uint160(0xCCCDDDEDDEEFEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
