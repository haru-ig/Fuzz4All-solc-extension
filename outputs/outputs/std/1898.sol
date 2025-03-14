pragma solidity ^0.8.0;
contract ArraysMutated_MutatedContracts {
    address public addr1;
    uint public counter1;
    uint public newCounter1;
    address public addr2;
    uint public counter2;
    uint public newCounter2;
    uint public arr;
    uint public arrLength;
    struct MyStruct {
        uint a;
        uint b;
        string c;
    }
    struct MyStructArray {
        uint[] x;
    }
    constructor(uint x) public {
        counter1 = counter2 = 3;
        newCounter1 = newCounter2 = 4;
        arrLength = x / 100;
        counter1 += arrLength;
        counter2 += arrLength * 4;

        for(uint i = 0; i < arrLength; i++) {
          uint rand = uint(keccak256(abi.encodePacked(abi.random(uint(blockhash(block.number))))));
          arr[rand * 100 + i] = rand * 7;
        }

        for(uint i = 0; i < arrLength; i++) {
          uint rand = uint(keccak256(abi.encodePacked(abi.random(uint(blockhash(block.number)))))));
          arrLength = ( i / arrLength)*arrLength;
          arr[arrLength * 100 + i] = rand * 100;
        }
        addr1 = msg.sender;
        addr2 = msg.sender;

        for (uint i = 0; i < 1 + arrLength; i++) {
          uint rand = uint(keccak256(abi.encodePacked(abi.random(uint(blockhash(block.number)))))));
          MyStruct storage y = arr[rand * 100 + (i % 100)*arrLength];
          y.a = rand; y.b = rand; y.c = "";
        }

        for (uint i = 0; i < 1 + arrLength; i++) {
          uint rand = uint(keccak256(abi.encodePacked(abi.random(uint(blockhash(block.number)))))));
          MyStruct storage y = arr[rand * 100 + (i % 100)*arrLength];
          y.a = rand; y.b = rand; y.c = "";
        }
        MyStructArray y = arr[i * 100];
        for (uint i = 0; i < 1; i++) {
          x = rand;
        }
        y.x = arr[i + 100];
        for (uint i = 0; i < 1 + (i + 100) % 100 ; i++) {
            uint rand = uint(keccak256(abi.encodePacked(abi
