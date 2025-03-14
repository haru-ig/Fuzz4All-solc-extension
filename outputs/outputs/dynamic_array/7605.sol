pragma solidity ^0.8.0;
contract Test15 {
    uint A;
    uint value;
    constructor() public {
        A = 45;
        value = A;
    }
    function a() public {
        A = 0;
        value = A;
        value = A;
    }
}
contract Test16 {
    uint A;
    uint value;
    function a() public {
        A += A;
        A -= A;
        A += A;
        A -= A;
        A += A;
        A -= A;
    }
}
contract Test17 {
    uint A;
    function a() public {
        A += A;
        A += A;
        A += A;
        A += A;
        A += A;
        A += A;
        A += A;
        A += A;
        A += A;
        A += A;
        A += A;
        A += A;
        A += A;
    }
}

contract Test18{
    uint A;
    function a() public{
        A;
        A;
        A;
        A;
        A;
        A;
        A;
        A;
        A;
        A;
        A;
        A;
        A;
        A;
        A;
        A;
        A;
        A;
        A;
        A;
        A;
        A;
        A;
        A;
        A;
        A;
        A;
        A;
        A;
        A;
        A;
        A;
    }
}
