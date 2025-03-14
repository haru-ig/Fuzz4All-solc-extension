pragma solidity ^0.8.0;
contract ExampleStruct9{
address contractOwner;
contract MyExampleStruct9{
    uint256 myStruct;
    uint16 internal myArray1;
    uint16 internal myArray2;
    constructor() {
        myArray1 = uint16(200);
        myArray2 = uint16(300);
    }
    function MyFunction() public pure {
        uint256 myStruct = 199;
    }
}

pragma solidity ^0.8.0;
contract ExampleStruct10{
address contractOwner;
contract MyExampleStruct10{
    uint256 myStruct;
    uint16 internal myArray1;
    uint16 internal myArray2;
    constructor() {
        myArray1 = uint16(200);
        myArray2 = uint16(300);
    }
    function MyFunction() public pure {
        uint256 myStruct = 199;
    }
}

pragma solidity ^0.8.0;
contract ExampleStruct11{
address contractOwner;
contract A{
    address contractOwner;
    function B() public pure {
        uint256 myStruct;
        uint16 myArray1;
        uint16 myArray2;
        myArray1 = uint16(200);
        myArray2 = uint16(300);
        myStruct = uint256(199);
        contractOwner = msg.sender;
    }
}
contract B{
    address contractOwner;
    function A() public pure {
    }
}

pragma solidity ^0.8.0;
contract ExampleStruct12{
    uint256 myStruct;
    uint16 internal myArray1;
    uint16 internal myArray2;
    constructor() {
        myArray1 = uint16(200);
        myArray2 = uint16(300);
    }
    function MyFunction() public pure {
        uint256 myStruct = 199;
    }
}
contract ExampleStruct13{
    uint256 myStruct;
    uint16 internal myArray1;
    uint16 internal myArray2;
    constructor() {
    }
    function MyFunction() public pure virtual {
        uint256 myStruct;
        uint16 myArray1;
        uint16 myArray2;
        myArray1 = uint16(200);
        myArray2 = uint16(300);
        myStruct = uint256(199);
    }
}
contract ExampleStruct14{
