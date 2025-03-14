pragma solidity ^0.8.0;
contract Test78 {
    mapping(uint=>uint[][]) z;
    constructor()public{
        z[4][5] = [20];
    }
}
