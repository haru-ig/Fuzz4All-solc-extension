pragma solidity ^0.8.0;
contract HelloWorld {
    address payable owner;
    uint price = 0;
    mapping (address => bool payable) admins;
    address payable min = address(0);
    bool minRegistered = false;
    mapping (address => bool payable) beneficiaries;
    bool beneficiaryRegistered = false;

    function registrar(
        uint _price
    ) public {
