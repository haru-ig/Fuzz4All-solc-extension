pragma solidity ^0.8.0;
contract Arrays {
    uint public constant M = 65;
    uint public value3_ = 0;
    mapping (uint => uint) public nums;
    uint[] public addrs;
    mapping (uint => uint) public values;
}
pragma solidity ^0.8.0;
contract Arrays {
    uint public constant M = 65;
    uint public value4_ = 0;
    mapping (uint => uint) public nums;
    uint[] public addrs;
    mapping (uint => uint) public values;
}

assembly {
    if eq(0, 8, 4, 7, 0) {
        return(1)
    } else if eq(5, 1, 3, 8, 2) {
        return(2)
    }
}
