pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity57_dynamic_75 {





    struct Foo {
        uint foo;
    }

    struct Bar {
        uint bar;
    }

    uint[2][8][4] public m;


    function assign(Foo f1, uint32[2] memory f2) public {
        m[1][0] = f1;
        m[1][1] = f2;
    }


    function sub(uint[8] memory a1, uint6 b) public {
        for (uint i = 0; i < 8; i++) {
            a1[i] = a1[i] - uint32(b);
        }
    }




    function modify(uint[8] memory a1, uint32 a2) public {
        a1[a2] += 2;
    }



    function callAnother(uint[] memory a, uint[] memory b) public {
        uint f1;
        uint f2;
        uint[4] memory f3;
        uint[4][] memory f4;
        uint[] memory f5;
    }
}
contract SemanticallyEquivalentSolidity57_dynamic_76 {
    uint[2][8] internal x;
    uint[8] internal y;
    uint[4] internal z;

    function test() public {
        x = uint[2][8]{
        0,1,2,3,4,5,6,7
        };

        y = x;
        y.length += 1;
        uint[8] memory memoryBuffer;

        y = y - memoryBuffer;
        y = y[:,:].length;
        y = y - uint[4]('');
        uy =
