pragma solidity ^0.8.0;
contract Main2 {
    uint constant N = 1;
    uint[] public blackbox;

    constructor () {
        for (uint i = 0; i < N; i++) {
            blackbox[i] = i;
        }
    }

    function modifyBlackboxes () public {
        blackbox[5]++;
    }

    function modifyBlackboxes2 (uint i) public {
        uint temp = 0x80;
        for (uint ii; ii < i; ii++) {
            temp = temp + 1;
        }
        blackbox[i] = temp;
    }

    function testDynamicArrays() public {
        uint[] blackbox2;
        for (uint i = 0; i < N; i++) {
            blackbox2[i] = blackbox[i];
            blackbox2[i] = blackbox2[i] + 1;
        }
        require( (blackbox2[0]==N) && (blackbox2[1] == 2) );
    }
}
