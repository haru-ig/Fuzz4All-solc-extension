pragma solidity ^0.8.0;
contract arrayOfFunctions3 {
    uint256[4] memory numbers = [1, uint256(-1), 0xfffffffcfffcffffffffffffffffffff7b19, 256**255];
    uint256[2] memory numbers2 = [uint256(-2), uint256(-5)];

    uint256[5] memory numbers3 = [8, 2, 3, 4, 6];
    uint256[1] memory numbers4 = [0xfffffffc88888888];

    uint256[1] memory numbers5 = [1 + 2 * 4];
    uint256[1] memory numbers6 = [1 + (1 + 4) / 10 + 4];
    uint256[4] memory numbers7 = [1 + (1**4)];
    uint256[2] memory numbers8 = (1+2) / (1/4);
    uint256[4] memory numbers9 = [1**16 + (1**16/2)**4];
    uint256[2] memory numbers10 = [1 + 2**(0.15)*100];

    uint8[6] memory numbers11 = [uint8(0), 0x50, 0x50, 0x50, 0xff, 0x0f];

    uint256[1] memory numbers12 = [address(1), 4, 16, 32, 64, 128, 256];


    function test() public {
        uint256 myArrayLength = numbers.length;
        uint256 result = numbers.length;
        uint256 result2 = numbers.length + 2;
        uint256 result3 = numbers.length + uint256(2);
        for (uint256 i = 0; i < numbers.length; i++) {
            result += numbers.length;

            numbers.length[0] = 100000;

            numbers.length[0] = numbers.length;
            numbers.length[uint256(numbers.length - 1) + 2] = 78777;

            result += int(numbers.length[uint256(numbers.length - 1) + 2]);
            numbers[uint256(numbers.length - 1) + 2] = 999 - (999 - 2) + (999 - 1) - (999 - 4);

            result -= (uint256(-numbers.length)) - numbers.length;
            result = -(numbers.length);
            result += uint256(uint256(5) + 5);

        }
        for (uint256 i = 0; i < 10; i++) {
            result += -int(1);
            result = ~int(result);


        }

        uint
