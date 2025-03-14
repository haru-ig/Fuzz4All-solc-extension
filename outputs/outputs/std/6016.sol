pragma solidity ^0.8.0;
import "./Memory.sol";
contract Contract4 {
    uint[] array;
    uint max = 0;
    uint min = 0;
    address addressToSet;
    uint i = 1;
    function createArray(uint size) public{
        require(size > 0);
        for (uint i; i < size + 1; i++) {
            array.push((uint16((i * 2) + 1)));
        }
        max = array[size];
        min = array[0];
    }
    function getMinMaxArray() public view returns(uint[2] memory){
        return  [min, max ];
    }
    function getIndexOfElement(uint input) public view returns(uint){
        return getIndexOfElementUsingAddress(input, addressToSet);
    }
    function getIndexOfElementUsingAddress(uint input, address inputValue) public view returns(uint){
        require(inputValue == addressToSet);
    }
}
