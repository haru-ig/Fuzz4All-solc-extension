pragma solidity ^0.8.0;
interface ExampleStruct4Interface {

    function eip() external view returns (uint256);

    function fep() external view returns (uint256);
}
pragma solidity ^0.8.0;
interface ExampleStruct4Interface{
    function eip() external view returns (uint256);
    function fep() external view returns (uint256);
}
pragma solidity ^0.8.0;
contract ExampleStruct4Implementation{
    ExampleStruct4Interface internal _Interface;
    constructor(){
        _Interface = type(ExampleStruct4Interface).interfaceId;
    }


    function eip() external view returns (uint256) {
        return myStruct.fieldEip;
    }

    function fep() external view returns (uint256) {
        return myStruct.fieldEip;
    }

}
