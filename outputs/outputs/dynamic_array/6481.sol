pragma solidity ^0.8.0;
contract S3{
    uint private S;
    function init(){S = 10}
}
contract S4{
    uint private S;
    uint public E = 1000000;
    function init(){S = E / E; }
}
