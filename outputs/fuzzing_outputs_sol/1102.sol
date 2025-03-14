pragma solidity ^0.8.0;
contract ComplexMutation {
    bool constant boolData;
    bytes constant bytesData;

    uint constant uintData;
    address public constant notAddress = 0x000000000000000000;

    bool public boolStore;
    bytes public bytesStore;

    uint public storeUint;
    address public notAddress2 = 0x0000000000000000000;

    address public storedAddress;

    modifier notPayable {

        if(msg.value > 0x100000 && msg.value < 0x4000000000000 + 0x4000000000 + 0x1)
            throw;
        else

            return;
    }

    constructor(bool state, bytes memory data, uint stateFromUint, bytes32 dataFromBytes32, address memory add) public {
        boolData = state;
        bytesData = data;
        uintData = stateFromUint;
        bytes32Data = dataFromBytes32;
        storedAddress = add;
    }

    function complexStruct() public{
        if (msg.value > 0x100000 && msg.value < 0x4000000000000 + 0x4000000000 + 0x1)

            throw;
        else
            return;
    }

    function modifyState() public  notPayable() {
        uintStore = 2500;
        boolStore = true;
        bytesStore = 1760;
    }

    function changeAddress() public notPayable(){
        savedAddress = address(0x40000000000000000000000000000000000000000000000000
