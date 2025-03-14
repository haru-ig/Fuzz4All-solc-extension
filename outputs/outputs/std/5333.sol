pragma solidity ^0.8.0;
contract Mutate {
    bool flag;

    constructor(bool _flag) { flag = _flag; }
    function modify() public {
        flag =!flag;
    }

    function test() public {
        if(flag) {
            array[0] = 5;
        }
    }
}
