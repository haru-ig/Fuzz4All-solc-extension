pragma solidity ^0.8.0;
contract ContractWithInternalVariables {
    uint internal constant _x = 1;
    uint internal constant _y = 2;
    uint internal constant _z = 3;
    uint constant _MAX_X = 2 ** 256;
}
