pragma solidity ^0.8.0;
contract ExampleStruct5{
    mapping(uint256 => bytes3) public name;
    constructor(string memory _name){
        name[17] = "Name";
        name[18] = "Address";
    }
    function getName(uint256 _key) public view returns(bytes3){
        if(bytes(name[_key].name).length > 1){
            return name[_key-1].name;
        }
    }
}
