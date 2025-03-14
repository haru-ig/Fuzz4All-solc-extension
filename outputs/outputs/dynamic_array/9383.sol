pragma solidity ^0.8.0;
contract Arrays1 {
    bytes4[] public a1;
    bytes2[] public a2;
}


contract Arrays2 {
    dynamic[] public a1;
}

contract Arrays5 {
    uint[] public a1;
}
contract Arrays3 {
    bytes32[] public a1;
}
contract Arrays4 {
    bytes32[] public a1;
    bytes32[] public a2;
}
contract Arrays1 {
    bytes4[] public a1;
    bytes2[] public a2;
}

contract Arrays2 {
    dynamic[] public a1 = new dynamic[](2);
}
contract Arrays5 {
    uint[] public a1 = new uint[](2);
}
contract Arrays3 {
    bytes32[] public a1 = new bytes32[](2);
}
