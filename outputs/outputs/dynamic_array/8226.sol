pragma solidity ^0.8.0;
contract Mutator {
    uint[] public x;
    constructor(uint size) {
        x = new uint[](size);
        for (uint i = 0; i < x.length; i++) {
            x[i] = i;
        }
    }
    function append(uint element) public {
        uint size = length();
        x.length++;
        x[length() - 1] = element;
    }
    function remove(uint elementToDelete) public {
        uint size = length();
        uint firstDeleted = 0;
        for (uint i = 0; i < size; i++) {
            if (x[i] == elementToDelete) {
                firstDeleted = i;
                break;
            }
        }
        bytes[] memory empty = new bytes[](0);
        x[firstDeleted] = 0;
    }
    function length() public view returns (uint) {
        return x.length;
    }
    function clear() public {
        x = new uint[](0);
    }
    function changeSize() public {

    }
    function pop() public {
        uint size = length();
        if (size > 0) {
            uint firstDeleted = 0;
            for (uint i = 0; i < size; i++) {
                if (x[i]!= 0) {
                    firstDeleted = i;
                    break;
                }
            }
            x[firstDeleted] = 0;
        }
    }
    function push(uint element) public {
        uint size = length();
        x.length++;
        x[size] = element;
    }
}
