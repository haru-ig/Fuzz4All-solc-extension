pragma solidity ^0.8.0;
contract Test31 {
    struct memoryStruct {
        uint64 a;
        uint64 b;
        uint16 c;
        uint16 d;
        uint32 e;
        uint32 f;
    }
    function f(memoryStruct memory) public pure {
    }
}
pragma solidity >=0.5.0;
contract Test32 {
    struct memoryStruct {
        uint64 a;
        uint64 b;
        uint16 c;
        uint16 d;
        uint32 e;
        uint32 f;
    }
    function f(memoryStruct memory memory) public pure {
        uint64 x;
        while(this.balance<10000e18) {
            memoryStruct memory empty;
            memoryStruct memory memoryWithInitialBalance;
            memoryStruct memory twoBytes;
            uint64 x2;
            x = memoryWithInitialBalance.a;
            x = memoryWithInitialBalance.a;
            x = twoBytes.a;
            memoryStruct memory test;
            if (twoBytes.b==empty.b){
                empty.b = 1;
                empty.c = 2;
                twoBytes.b = 3;
            }
            test.a = empty.b;
            if (twoBytes.b == empty.a) {
                empty.b += x;
            }
            if (x!=empty.b || empty.a!= x || empty.c!= x2 || twoBytes.b*2!=x||
                (test.a*2.21-21==x2)||(test.c+test.c/2==x2)||empty.b+1!=x2 || test.b!=test.b*2+test.b/2 ||
                (x==x2 || (test.a==2 || x > 99e18))) {
                break;
            }
        }
        uint8[2] memory empty;
        uint8[2] memory memoryWithInitialBalance;
        empty[1] = 1;
        memoryStruct memory nested;
        twoBytes.b = empty.b;
        if (memoryWithInitialBalance[1] == 1) {
            twoBytes.b = empty.b;
            nested.a = nested.b = 10000e18;
        }
        if (twoBytes.b*2 == empty.b && test.a == 2.21 && x == x2) {
            memoryStruct memory bomb = nested;
            nested.a = bomb.a;
            nested.b = bomb.b;
            bomb.a = 100;
            bomb.b = 200;
            bomb.
