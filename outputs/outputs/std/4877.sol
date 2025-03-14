pragma solidity ^0.8.0;
contract MutateWithMath {
    struct Test {
        uint[] array;
    }
    Test test = Test({
        array: new uint[](1)
    });
}

pragma solidity ^0.8.0;
contract MutateWithMath {
    struct Test {
        uint[] array;
    }
    Test test = Test({
        array: new uint[](1)
    });
    uint random = Random.random();
    (uint a, uint b, uint c) =
        (random % 100, random % 256, random % 512);
    (uint d, uint e, uint f) =
        (random % 500, random % 128, random % 128);
    for(uint i = 0; i < a; i++) {test.array.push(b); test.array.push(c);}
    for(uint i = 0; i < d; i++) {test.array.push(e); test.array.push(f);}
}
