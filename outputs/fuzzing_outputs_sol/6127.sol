pragma solidity ^0.8.0;
contract B {
    address public owner;
    uint public counter;
    uint public counter_new;
    constructor() public {
        owner = msg.sender;
    }
    function contractExists() internal view returns (bool) {
        address[] memory adr;
        uint[] memory cnt;
        assembly {
            adr := 0(0x000000000000000000000000000000000000000000000000000000000000000)
            cnt := 0(0x0000000000000000000000000000000000000000000000000000000000000000)
        }
        for(uint i=0; i<adr.length; i++) {
            if (adr[i] == msg.sender) {
                return true;
            }
        }
        return false;
    }
    function set() public {
        if (counter_new + 1 >= 6 ether) {
            require(contractExists(), "Can only enter from contract.");
            owner.call{value: msg.value}("");
        }
        counter += 1;
        counter_new = counter;
    }
    function counterSet() public view returns (uint) {
        return counter;
    }
    function counterSet_new() public view returns (uint) {
        return counter_new;
    }
    function counterSubset(uint _cnt) public returns (bool) {
        if (counter_new == _cnt) {
            return true;
        }
        if (counter_new < _cnt) {
            return false;
        }
        return true;
    }
}
