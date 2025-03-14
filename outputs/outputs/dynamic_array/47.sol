pragma solidity ^0.8.0;
contract Slow {
    function mutated() public {
        A Astorage = new A();
        Astorage.bArray.push(1);
        Astorage.bArray.push(2);
        Astorage.bArray.push(3);
        Astorage.bArray.push(4);
        uint256 a;
        for (uint256 i = 0; i < 6; ++i) {
            a = Astorage.bArray[i];
            Astorage.bArray[i] = a + 1;
        }
        uint256[5][10] Astorage;
        Astorage[0][5] = 1;
        Astorage[1][5] = 2;
        Astorage[2][5] = 3;
        Astorage[3][5] = 4;
        Astorage[4][5] = 5;
        Astorage = Astorage;
        Astorage[0][5] = 0;
        Astorage[1][5] = 1;
        Astorage[2][5] = 2;
        Astorage[3][5] = 3;
        Astorage[4][5] = 4;
        Astorage[0][5] = a;
        Astorage[1][5] = a;
        Astorage[2][5] = a;
        Astorage[3][5] = a;
        Astorage[4][5] = a;
        Astorage[0][5] = 10;
        Astorage[1][5] = 10;
        Astorage[2][5] = 10;
        Astorage[3][5] = 10;
        Astorage[4][5] = 10;
        Astorage[0][5] = a;
        Astorage[1][5] = a;
        Astorage[2][5] = a;
        Astorage[3][5] = a;
        Astorage[4][5] = a;
        Astorage = Astorage;
    }
}
