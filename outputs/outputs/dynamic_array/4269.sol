pragma solidity ^0.8.0;
contract G3 {
    address[3] _addresses;
    constructor() public {
        _addresses[0] = address(1);
        _addresses[1] = address(2);
        _addresses[2] = address(3);
    }
}

pragma solidity ^0.8.0;
contract G4 {
    mapping(uint32 => uint[]) _data;
    constructor() public {
        _data[1] = new uint[](3);
        _data[2] = new uint[](3);
        _data[2][0] = 5;
        _data[2][1] = 4;
        _data[2][2] = 3;
    }
}
