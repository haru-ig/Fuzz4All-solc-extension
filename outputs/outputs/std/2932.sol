pragma solidity ^0.8.0;
contract MutateArray_v3 {
}
pragma solidity ^0.8.0;

contract MutateArray_v2 {
    function getAndMutate(uint[5] memory a) public {
        a[2] = 3;

        require(a[1] == 2, "Unexpected value in array 2");
    }

    function getAndMutate2(uint[5] storage a) public {
        a[2] = 3;

        require(a[1] == 2, "Unexpected value in array 1");
    }
}
pragma solidity ^0.8.0;

contract MutateArray_v1 {
    function getAndMutate(uint[5] memory a) public {
        a[2] = 3;


    }

    function getAndMutate2(uint[5] storage a) public {
        a[2] = 3;


    }
}
pragma solidity ^0.8.0;

contract MutateArray_v0 {
    function getAndMutate(uint[5] memory a) public {
        a[2] = 3;


    }

    function getAndMutate2(uint[5] storage a) public {
        a[2] = 3;


    }
}
