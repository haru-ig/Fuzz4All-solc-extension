pragma solidity ^0.8.0;
contract G5 {
    address[3] _addresses;
    mapping(uint32 => bytes32) _signatures;
    constructor() public {
        _signatures[3] = "Hello world!";
        _addresses[0] = address(1);
        _addresses[1] = address(2);
        _addresses[2] = address(3);
    }
}
contract G6 {
    address[3] _addresses;
    mapping(uint32 => uint[]) _data;
    constructor() public {
        _addresses[0] = address(1);
        _data[1] = new uint[](3);
        _data[1][0] = 5;
        _data[1][1] = 4;
        _data[1][2] = 3;
    }

    function g() public {
        _addresses[2] = address(1);
        emit Addresses(_addresses);
        emit Data(_data, 0);
    }
}
