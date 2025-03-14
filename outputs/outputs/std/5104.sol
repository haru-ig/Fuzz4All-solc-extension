pragma solidity ^0.8.0;
contract Mutated {
    uint public array1[100] = [1, 2, 3, 4, 5];
    uint public array2;
}
pragma solidity ^0.8.0;
contract Mutated {
    uint public array1[100] = [1, 2, 3, 4, 5];
    uint public constant array2 = array1[19];
}
