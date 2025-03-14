pragma solidity ^0.8.0;
contract Test48Semant {
    uint[] public array;
    constructor() public {
        array.push(4);
    }
    function setArray() public {
        array = [0, 1, 2, 3];
    }
}

pragma solidity ^0.8.0;
contract Test49Semant {
    uint[] public array;
    uint size;
    uint count;
    uint last;
    uint[] memory tmp;

    constructor() public {
        tmp[0] = 14;
        size = 4;
        count = 0;
        tmp[1] = 15;
        tmp[2] = 16;
        tmp[3] = 17;
    }

    function setArray() public {
        array = [0, 1, 2, 3];
    }

    function setArray2() public {
        count = 5;
        array[5] = 18;
    }

    function resetArray() public {
        size = 5;
        count = 0;
    }
}

pragma solidity ^0.8.0;
contract Test50Semant {
    uint[][] public dynamic_array;
    uint[] memory new_array1;
    uint[] memory new_array2;

    modifier push_new_array() {
        new_array1.push(0xfffffffffffffffffffffff);
        new_array2.push(0xfffffffffffffffffffffff);
        _;
    }

    function setArray1() public push_new_array {
        dynamic_array.push(new_array2);
        dynamic_array.push(new_array1);
        dynamic_array.push(new_array2);
        dynamic_array.push(new_array1);
    }
}
