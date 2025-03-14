pragma solidity ^0.8.0;
library Lib {
    uint[] arr;

    function initializeArr (uint _arrLength) public {
        arr = new uint[](_arrLength);
    }
    function depositArr (uint _index, uint _value) public {
        arr[_index] = _value;
    }


    function retrieveValue(uint _index) public view returns (uint) {
        return arr[_index];
    }
    function modifyArr (uint _index, uint _value) public {
        arr[_index] = _value;
    }
}


contract Ownable {
    address public owner;
    address public newOwner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "You must be the newOwner to call this function");
        _;
    }

    function setOwner(address _newOwner) public onlyOwner  {

        newOwner = _newOwner;
    }
}

contract Pausable is Ownable {
    using SafeMath for uint256;

    bool public paused;


    constructor() {
        paused = false;
    }


    modifier whenNotPaused() {
        require(!paused, "The contract is paused.");
        _;
    }


    modifier whenPaused() {
        require(paused, "The contract is not paused.");
        _;
    }



    function pause() public onlyOwner whenNotPaused {
        paused = true;
    }


    function unpause() public onlyOwner whenPaused {
        paused = false;
    }
}
/**
 * @dev Interface of the ERC20 standard as defined in the
