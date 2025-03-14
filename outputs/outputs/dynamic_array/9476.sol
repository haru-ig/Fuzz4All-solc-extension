pragma solidity ^0.8.0;
contract Main {
    bool public isPublic;
    constructor () public { }
    modifier isPublicModifier() { isPublic = true; _;}
    modifier isNotPublicModifier() { isPublic = false; _;}
    interface MyInterface {
        function methodWithOptionalParameters(address  , bytes32, bytes memory) public;
    }
    struct Foo {
        bytes32 myField;
        address myAddress;

        constructor (string memory hello,bytes32 myField2) { myField = myField2; myAddress = msg.sender;}
        function add(string memory text) public onlyPublicModifier { emit log(bytes(text)); }
        function log(bytes memory what) private pure { }
    }
    function createFooInstance(bytes memory args) public {
        bytes32 myField;
        uint64 myUint;
        address myAddress;

        assembly {
            myAddress := mload(0x40)
            myUint := mload(0x48)
            myField := mload(0x60)
        }
        assembly {
            let myStruct := mload(0x40)
            mstore(myStruct, add(myStruct, 0x0220))
            mstore(myStruct, mload(add(mmemory,0x40)))
        }
        (myField, myUint, myAddress) = abi.decode(args, (bytes32, uint64, address));
    }
    enum MyEnum {One, Two}
    function createFoo(MyEnum enum) public {
        (, bytes32 myField, address myAddress) = abi.decode(enum, (bool, bytes32, address));
    }
    function createFoo(bool isPublic) public {
    }
    modifier onlyPublicModifier() { require(isPublic, "This contract is supposed to be private and should fail"); _;}
    function callTestForOptionalParameters(address sender, bytes32 optional, bytes memory  ) public isPublicModifier onlyPublicModifier {
        (, bytes32 myField, _) = abi.decode(msg.data, (bool, bytes32, address));
        emit logForMethod(optional, myField, msg.data,sender);
    }
    function updateStruct() public isPublicModifier onlyPublicModifier {
