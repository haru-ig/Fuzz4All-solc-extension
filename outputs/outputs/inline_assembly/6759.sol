pragma solidity ^0.8.0;
contract MixedContactsExample507 is MixedContactsExample506 {


    function update(string memory dataContractState, uint8 test) public {
        uint8 randomValue;


        assembly {
            randomValue := dataContractState
        }

        uint8 newRandomValue =

          randomValue + test * 0x100000000;



        dataContractState = newRandomValue.toHexString();
    }

    function anotherOperation2() public {
        update("Hello, World", 0x111);
    }
}
