pragma solidity ^0.8.0;
contract FallbackStorage1 {
    uint public num;
    modifier mutatedStorage() {
        num += 1;
        _;
    }

    function changeNumber() public mutatedStorage {
        num += 1;
    }
    function addZeroTwo() public {
        num += 2;
    }
}
contract FallbackStorage2 {
    uint public num;
    modifier mutatedStorage() {
        num += 1;
        _;
    }

    receive() external payable mutatedStorage {
        num += 1;
    }
    function addZeroTwo() public {
        num += 2;
    }
}
contract FallbackStorage3 {
    uint public num;
    modifier mutatedStorage() {
        num += 1;
        _;
    }

    function changeNumber() public mutatedStorage {
        num += 1;
    }
    receive() external payable mutatedStorage {
        num += 1;
    }
    function addZeroTwo() public {
        num += 2;
    }
}
contract FallbackStorage4 {
    uint public num;
    modifier mutatedStorage() {
        num += 1;
        _;
    }

    function changeNumber() public mutatedStorage {
        num += 1;
    }
    function addZeroTwo() public {
        num += 2;
    }

    receive() external mutatedStorage {
        num += 1;
    }
}
