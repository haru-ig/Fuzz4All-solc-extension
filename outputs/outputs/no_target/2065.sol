pragma solidity ^0.8.0;
contract Modification {
    uint256 public a;
    bool public boolean;
    address private _addr;
    constructor(bool _boolean, address _addr) public {
        a = 36003;
        _addr = _addr;
        boolean = _boolean;
    }
}
