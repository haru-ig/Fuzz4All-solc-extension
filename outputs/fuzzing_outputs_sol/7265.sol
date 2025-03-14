pragma solidity ^0.8.0;
contract ValueWithFallback3 {
    address public value;
    constructor(address _caller) {
        value = _caller;
    }
    function example2() public payable {
        value = value;
    }
}

contract ValueWithFallback4 {
    address public value;
    constructor(address _caller) {
        value = _caller;
    }
    function example1() public payable {

        assembly {
        calldatacopy(0x40, 0x0, 0x20)
        let sig := mload(0x40)




        let result := call(sub(20, sig), sig, 0, 0, 0, 0)

        value := mload(result)
    }
    }
}
