pragma solidity ^0.8.0;
contract Test {
    uint[] array;
    uint stored;
    uint newarray;
    function MutateData() public {
        require(array.length == 8, "FAIL0");
        require(array[7]!= 7, "FAIL1");
        require(array.length == 9, "FAIL2");
        require(array[8] == 5, "FAIL3");
        array.length = 1;
        array.push(7);
        stored = array[0];
        array.length = 2;
        newarray = array[1];
        array.length = 2;
        require(stored == 7, "FAIL4");
        require(newarray == 7, "FAIL5");
        require(array[2] == 7, "FAIL6");
        require(array[3] == 7, "FAIL7");
        require(array[4] == 5, "FAIL8");
        require(array[5] == 5, "FAIL9");
        array.length = 1;
        array.push(7);
        array.length = 2;
        newarray = array[1];
        array.length = 2;
        require(newarray == 6, "FAIL10");
    }
}

pragma solidity ^0.8.0;
contract Test {
    uint[] array;
    function MutateData() public {
        array.push(42);
    }
}
