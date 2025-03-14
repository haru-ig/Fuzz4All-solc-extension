pragma solidity ^0.8.0;
contract C {
    uint256 public state;
    constructor() public {
        state = 100;
    }
    function modifiesArray(uint256[] memory array1, uint256[] memory array2) public pure returns (bool) {
        for (uint256 i = 0 ; i < array1.length ; i++) {
            if (i == 0) {
                array1[i] = state;
            }
            uint256 mem = array2[i];
            array2[i] = array1[i];
            array1[i] = mem;
        }
        return true;
    }
}

pragma solidity ^0.8.0;
contract C {
    struct D {
        uint8 a;
        uint256 b;
    }
    D[] a;
    bool modifesArray(D[] memory array, bytes memory sliceLength) public {
        if (array.length <= array.length/2) {
            return;
        }
        array[0] = D({a: 5, b: 10});
        sliceLength.copy(bytes(array[3]));
        array[2] = D(uint8(5), state);
    }
}
