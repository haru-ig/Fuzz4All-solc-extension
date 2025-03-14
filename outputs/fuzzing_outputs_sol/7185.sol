pragma solidity ^0.8.0;
contract MutatedExample2 is IExample2 {

    mapping(address => bytes32) public checkFor;

    modifier onlyValid(){
        require(checkFor[msg.sender] == SAFETY);
        _;
    }

    constructor(address payable _addr) {
        checkFor[_addr] = SAFETY;
    }

    function isValid(uint _x) public view returns(bool) {
        return _x == 1234;
    }

    function setCheckFor(address c) public onlyValid {
        require(c!= address(0));
        checkFor[c] = SAFETY;
    }

    function getCheckFor() public view returns (bytes32) {
        return checkFor[msg.sender];
    }
}
