pragma solidity ^0.8.0;
contract ArraysMutated {
    uint[] storage array;
    uint size;
    method getArray() public view returns(uint[]) {
        return array;
    }
    method setArray(uint[] memory x) public {
        require(array.length == 1);
        array = x;
    }
    function setArraySize(uint x) public {
        require(x < 2000);
        size = x;
    }
    function setLastInteger(uint x) public returns(uint) {
        array[size] = x;
        counter += 1;
        return x;
    }
}
