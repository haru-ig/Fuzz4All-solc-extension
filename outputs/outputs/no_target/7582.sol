pragma solidity ^0.8.0;
contract ContractWithNewModifier {

    uint32 variable;
    modifier mutated() {
        if(variable!= 1) {
            uint32 tmp = 1;
            variable = tmp;
        }
        _;
    }
    function method() public mutated payable {
        return;
    }
}
