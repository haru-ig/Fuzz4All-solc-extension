pragma solidity ^0.8.0;
contract ExampleStruct3{
    struct NonStandardComplexStruct{
        uint256 fieldEip;
        uint256 fieldFep;
        uint256 fieldGep;
        uint256 fieldHEP;
    }
    NonStandardComplexStruct internal myStruct;
    constructor()public{
        myStruct.fieldEip = 1;
        myStruct.fieldEip = 2;
        myStruct.fieldEip = 3;
    }
    function createExampleStruct()internal pure returns(ExampleStruct3 memory){
        return ExampleStruct3(myStruct);
    }
}

pragma solidity ^0.8.0;
contract ExampleStruct4{
    address constant myAddress = msg.sender;
    address payable constant myPayee = payable(msg.sender);
    address payable internal myContract;
    constructor(){
        myContract = msg.sender;
    }
    function createExampleAddress()internal returns(address payable){
        return payable(myAddress);
    }
}

pragma solidity ^0.8.0;
contract ExampleStruct4{
    address constant myAddress = msg.sender;
    address payable constant myPayee = payable(msg.sender);
    address payable internal myContract;
    constructor(){
        myContract = msg.sender;
    }
    function createExampleAddress()internal pure returns(address payable){
        return payable(myAddress);
    }
}
