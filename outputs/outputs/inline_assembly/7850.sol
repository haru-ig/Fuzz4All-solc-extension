pragma solidity ^0.8.0;
contract L13{
    struct Store {
        uint8 counter;
        address public storedAddress;
    }

    constructor() public {
        L23 l1 = L23(0x10);
        l1.modifyCalled();


    }

    function getData() public view returns(uint) {
        return L23(0x10).counter;
    }
}
