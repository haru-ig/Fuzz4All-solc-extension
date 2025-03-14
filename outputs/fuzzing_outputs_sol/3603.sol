pragma solidity ^0.8.0;
contract MutateSemantic6Caller {

    MutateSemantic6Caller immutable public caller;
    mapping(uint => uint) public data_;
    mapping(address => uint) public data_modifier_;
    event Evt(uint a);


    constructor(MutateSemantic6Caller memory _caller) {
        caller = _caller;
    }


    modifier ForcedModifiers(uint a) {
        data_modifier_[msg.sender] = 1;
        _;
    }

    modifier OnlyModifiers(uint a) {
        data_modifier_[msg.sender] = 0;
        _;
    }
    function modifyC(uint256 x, uint256 y) public OnlyModifiers(1) forcefullyModified modifyMethod {
        data_[1] = (x + y);
    }
    function onlyNoModifiers(uint256 x, uint256 y) public OnlyModifiers(0) onlyModified {
        data_[1] = (x + y);
    }

    function forcefullyModified(uint256 x, uint256 y) public {
        data_[2] = (x + y);
    }

    function onlyModified() public {
        data_[2] = (1 + 5);
    }
}
