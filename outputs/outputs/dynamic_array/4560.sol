pragma solidity ^0.8.0;


contract TestC0F {


    IERC677TokenReceiver receiver;
    uint8 internal constant AMOUNT = 2;
    uint8[AMOUNT] public dataStorage1;
    uint8[AMOUNT + 1] public dataStorage2;
    uint8[1] public dataStorage3;
    uint8[1, AMOUNT] public dataStorage4;
    uint8[1, AMOUNT + 1] public dataStorage5;
    uint8[amount + 1] public dataStorage6;
    uint8[amount + 1, MAX_ARRAY_LENGTH] public dataStorage7;
    uint8[1, 1, AMOUNT, 1] public dataStorage8;
    uint8[2, 2] public dataStorage9;
    uint8[amount, MAX_ARRAY_LENGTH] public dataStorage10;
    uint8[amount + 1, amount + 1] public dataStorage11;
    uint8[amount + 1, AMOUNT + 1] public dataStorage12;

    address internal constant _sender = "Test1";
    address internal constant _operatorAddress = "Test2";
}
