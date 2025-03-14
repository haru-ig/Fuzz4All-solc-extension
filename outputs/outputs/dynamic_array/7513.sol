pragma solidity ^0.8.0;
contract Test42_DynamicArray2_mutate {
    address[] admin;
    constructor () public {
        admin = admin.length > 1? new admin[](admin.length + 1) : admin;
        admin[1] = admin[0];
    }
    function changeArray() public {
        admin = admin.length > 1? admin.length - 1 : new admin[](admin.length - 1);
    }
}
