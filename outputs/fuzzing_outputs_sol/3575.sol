pragma solidity ^0.8.0;
contract MutateSemantic4WithCaller3 {
    function modifyF(uint x) public payable {
        uint y = (uint(uint8(x))) / 2;
        if (msg.value < 10 ether)
            x = y;
        else
            x = 2 * (y * (2-y));
    }
    function doWork(uint x) public {
        uint y = (uint(uint8(x))) / 2;
        uint z;

        while (true) {
            if (msg.value == 0 ether) {
                break;
            }
            z = uint(uint8(x)) / 2;
            if (x == 3*y + 10 + 1) {
                break;
            }
        }
    }
}
