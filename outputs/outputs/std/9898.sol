pragma solidity ^0.8.0;
contract Array {
    uint8 [2] a;
    uint8 b;
    uint8 [2][2] c;
    uint8 [2][2][2] d;
    uint8 [2][2][2][2] e;
    uint8 [2][2][2][2][2] f;
    uint8 [2][2][2][2][2][2] g;
    uint32 h;
    uint32 i;
    bytes memory memory1;
    constructor () {
        a = [11, 2, 4];
        c = [[1,1,1], [1,1,1]];
        d = [[[1,1,1], [1,1,1],[1,1,1]], [[1,1,1], [1,1,1]],[[1,1,1], [1,1,1]]];
        e = [3, 4];
        f = [1,2,3];
        g = ["A","B", "C"];
        h = 30;
        i = 40;
        memory1 = "A";
    }
    function change1() public {
        h--;
        i--;
    }
    function change2() public {
        i--;
        h--;
    }
    function change3() public {
        i = l;
    }
}
