pragma solidity ^0.8.0;
contract Mutation_FunctionCaller {
    function setArray(uint[] memory _new_array) public {
        this.modifyArray(_new_array);
    }
    function modifyArray(uint[] memory _new_array) memory {
        this.setArray(_new_array);
    }
    function test(uint[] memory _original_array) public view returns (uint[]) {
        setArray(_original_array);
        uint[] memory ret = originalArray;
        return(ret);
    }
    function setArray(uint[] memory _new_array) public {
        this.modifyArray(_new_array);
    }
}
