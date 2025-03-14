pragma solidity ^0.8.0;
contract H {
    uint[] public myArr;
    uint myInt;
}

pragma solidity ^0.8.0;
contract TestArray {
    address[] public addrs;
    constructor () {
        addrs.push(address(0x12A400));
    }
    uint public myVar2 = 3;

    constructor () {
        address[] storage addrs2;
        addrs2.push(address(0xC735b7));
    }
}
