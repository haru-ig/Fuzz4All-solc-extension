pragma solidity ^0.8.0;
contract Mutator { constructor () {
} function test() public pure {
    Mutator storage m = Mutator(msg.sender);
} function test2() public pure {
    uint8[1,2][5,4] memory m = [1,2,3,4,5];
} }
pragma solidity ^0.8.0;
library ArraysCheck { function testArr(uint[5] memory) public pure {
    delete m[0];
    m[1][2] = 1;
    m[4] = 1;
} }
pragma solidity ^0.8.0;
contract Mutator { constructor () {
} function test() public pure {
    Mutator storage m = Mutator(msg.sender);
    uint8[1,2][5,4] memory n = m;
} function test2() public pure {
    uint8[1][2] memory z;
    z[0].length = 2000;
    z.length = 11;
} function test3() public pure {
    uint8[][] memory temp = new uint8[10][10];
} }
pragma solidity ^0.8.0;
contract Mutator { constructor () {
} function test() public pure {
    Mutator storage m = Mutator(msg.sender);
    m[1].length = 1;
} }
pragma solidity ^0.8.0;
contract Mutator { constructor () {
} function test() public pure {
    Mutator storage m = Mutator(msg.sender);
    uint8[][] memory a = new uint8[1][];
} }

pragma solidity ^0.8.0;
library ArrayWithStorageLayout { uint8 arrayLayout[1000]; } contract Mutator { constructor () {
} function test() public pure {
    Mutator storage m = Mutator(msg.sender);
    ArrayWithStorageLayout.arrayLayout.length = 1;
    ArrayWithStorageLayout.arrayLayout[1] = 1;
} }
pragma solidity ^0.8.0;
contract Mutator { constructor () {
} function test() public pure {
    Mutator storage m = Mutator(msg.sender);
    arrayWithStorageLayout(m);
} function arrayWithStorageLayout(Mutator storage m) public pure {
    ArrayWithStorageLayout.arrayLayout.length = 1;
    ArrayWithStorageLayout.arrayLayout[1] = 1;
