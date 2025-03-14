pragma solidity ^0.8.0;
contract Array {
    uint public totalSupply;
    uint public countArray;
    uint[] public array;
    function newArray(uint16 x) public {
        countArray++;
        array[countArray] = x;
    }
    function increaseCountBy(uint16 x) public {
        countArray++;
        array[countArray] += x;
    }
    function findPositionOf(uint16 x) public view returns (uint z) {
        for (z = 0; z < countArray; z++) {
            if (array[z] == x) {
                break;
            }
        }
    }
    function deleteCountBy(uint16 x) public {
        countArray--;
        for (uint i = z; i < countArray; i++) {
            array[i] = array[i + 1];
        }
    }
    function update(uint16 z, uint16 x) public {
        if (x < array[z]) {
            x++;
        } else if (x > array[z]) {
            x--;
        }
        array[z] = x;
    }
}
