pragma solidity ^0.8.0;
contract Mutate2 {
    uint public constant zero = 0;
    mapping (uint => bool) public values;
    mapping (uint => uint) public sums;
    mapping (address => uint) public balances;
}


pragma solidity ^0.8.0;
contract Mutate3 {
    struct Test {
        uint16[] someArray;
        mapping (uint16 => uint16) someMap;
    }

}
pragma solidity ^0.8.5;


contract Mutate4 {
    uint public constant zero = 0;
    uint16[] public someArray;
    mapping (uint16 => uint16) public someMap;
}
