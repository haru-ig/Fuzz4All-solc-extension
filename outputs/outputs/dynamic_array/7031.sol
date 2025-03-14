pragma solidity ^0.8.0;
contract Test79 {
    mapping(uint=>uint[][]) z;
    constructor()public{


        z[45] = new uint[](6);
        z[45][5] = 20;
    }
}
