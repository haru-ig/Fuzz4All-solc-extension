pragma solidity ^0.8.0;
contract Mutate1E {
    uint public _counter;
    mapping(uint => address) private _target;
    mapping(address => uint) public _mask;
    constructor() public {
    }
}
