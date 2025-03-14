pragma solidity ^0.8.0;

contract Semantic1 {
    uint constant constantMax = 2**128-1;
}
pragma solidity ^0.8.0;

contract Semantic2 {
    uint constant constantMax = uint(-1);
}
