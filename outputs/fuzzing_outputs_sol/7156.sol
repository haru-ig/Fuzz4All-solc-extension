pragma solidity ^0.8.0;
contract Example3 {
    bool internal check = true;
    mapping(uint => bool) public v;
    modifier onlyMe {
    if (!check) _;
    addr = msg.sender;
    }
    function setCheck(bool x) public onlyMe {
        check = x;
    }
}
