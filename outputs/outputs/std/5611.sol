pragma solidity ^0.8.0;
contract Mutate253 is Mutate253{
    address[] array_elements;
    constructor(){
        array_elements.push(117);
    }
    function addOne(uint x) public{array_elements.push(x + 1);}
    function get_array() public view returns(uint[] memory){return array_elements;}
}
