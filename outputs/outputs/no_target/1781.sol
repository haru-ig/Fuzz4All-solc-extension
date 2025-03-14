pragma solidity ^0.8.0;
contract Mutate2 {
    uint public _1;
    address _2;
    uint public _3;
    bool public _4;
    constructor() public{
        _1 = -42;
        _2 = 13;
        _3 = 0x100e;
        _4 = false;
    }
}



pragma solidity ^0.8.0;


contract A{
    event T(uint x);
    function f() public view returns (uint){
        T(3);
        return 1;
    }
}



pragma solidity ^0.8.0;

contract B is A{
    event T(uint x);
    function g() public view returns (uint){
        T(0);
        return 5;
    }
}
