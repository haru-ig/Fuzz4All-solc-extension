pragma solidity ^0.8.0;
contract Mutation_VariableCaller2 {
    function removeLastElement(uint[3] memory _new_array) public {
        address[] memory _last_element = new address[](1);
        _new_array[_new_array.length - 1] = 0;
        _last_element[0] = 0;
        delete _last_element;
    }
}
