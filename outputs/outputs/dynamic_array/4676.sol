pragma solidity ^0.8.0;
 contract ComplexMemory{

    StateMutated2 state1;
    function MutateData() {
        state1.quantity = 10;
        state1.data = 100;
        state1.quantityMin = 0;
        state1.quantityMax = 255;
        state1.quantityStep = 1;
        state1.quantityIncrement = 10;
        state1.name = "Name";
        state1.data2.push("One");
        state1.data3 = 1000;
        state1.data4 = 1001;
    }

    function MemoryBackAddressCall() public {

        state1.data = 22;
        state1.payee.send(address(state1));
    }
    function MainCall() public {
        MutateData();
        MemoryBackAddressCall();
    }
}
