pragma solidity ^0.8.0;
contract ExampleStruct1{
    struct User{
        uint256 id;
        bool alive;
    }
    User internal owner;
    address[] internal owners2;
    uint[] internal owners1;
    constructor(){
        owner.id = 100;
        owner.alive = true;
        owners2.push(address(owner));
        owner.dead = false;
        owners1.push(owner.id);
    }
}
