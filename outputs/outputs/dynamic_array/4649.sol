pragma solidity ^0.8.0;

library Array {
    struct Node {
        bool isFilled;
        uint256 value;
        uint256 value2;
        mapping(bytes32 => uint256) value3;
    }

    struct DynamicArray {
        Node[] data;
    }

    function contains(DynamicArray memory a, bytes32 key) public view returns (bool) {
        return a.data[key.slot()].isFilled;
    }

    function add(DynamicArray storage a, uint256 element) public {
        Node storage n = a.data[element.slot()];
        if (n.isFilled) throw;
        n.isFilled = true;
        n.value = element;
        try n.value.value {
            n.value2 = n.value.add(1);
        } catch (Error()) {
            n.value = n.value.value;
            n.value2 += 1;
        }
    }

    function value(DynamicArray storage a, bytes32 key) public view returns (uint256) {
        return a.data[key.slot()].value;
    }

    function value2(DynamicArray storage a, bytes32 key) public view returns (uint256) {
        return a.data[key.slot()].value2;
    }

    function set(DynamicArray storage a, bytes32 key, uint256 element) public {

        a.data[key.slot()].value = element;
    }

    function set2(DynamicArray storage a, bytes32 key, uint256 element) public {

        a.data[key.slot()].value2 = element;
    }

    function delete(DynamicArray storage a, bytes32 key) public {

        a.data[key.slot()].isFilled = false;
    }

    function delete2(DynamicArray storage a, bytes32 key) public {

        a.data[key.slot()].isFilled = false;
    }
}
