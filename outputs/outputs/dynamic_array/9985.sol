pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract SemanticTest13 {
    struct A { uint x; uint y; }
    struct K { uint x; uint y; uint z; }
    function mutate() public {
        uint[][] memory storage array = new uint[5][];
        array[0] = new uint[](1);
        uint m = 0;
        while (m < 1000000) {
            A memory item1 = A({ x: m, y: m + 1 });
            A memory item2 = A({ x: m + 1, y: m + 2 });
            A memory item3 = A({ x: m + 2, y: m + 3 });
            K memory item4 = K({ x: m + 3, y: m + 4, z: m + 5 });
            K memory item5 = K({ x: m + 4, y: m + 5, z: m + 6 });
            K memory item6 = K({ x: m + 5, y: m + 6, z: m + 7 });
            uint j = 0;
            while (j < 1500000) {
                uint z = 0;
                while (z < 8) {
                    uint y = z * 11;
                    item1 = A({ x: m + 10, y: y });
                    y += 2;
                    item2 = A({ x: m + 11, y: y
