pragma solidity ^0.8.0;
contract ComplexMutation11_Mutate {
    function caller(uint8 arg) public {
        uint8 i;
        for(i = 0; i <= 10; i += 1) {
            ComplexMutation11_Old(0).caller(i);
        }
    }
}
