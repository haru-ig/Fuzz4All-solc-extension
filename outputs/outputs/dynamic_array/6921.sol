pragma solidity ^0.8.0;
contract Test2 {
    struct S {
        int[] a;
    }


    function test() public {
        S[] memory memoryS = new s[][](5);
        memoryS[0].a = new int[](10);
        memoryS[1].a = new int[](10);
        memoryS[2].a = new int[](1);
        memoryS[3].a = new int[](3);
        memoryS[4].a = new int[](8);
    }
}
