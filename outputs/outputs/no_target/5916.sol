pragma solidity ^0.8.0;
contract C {
    constructor(address payable a) public {
        require(a!= address(0));
        bytes1 s = a.sendValue(125);
        bytes2 s2 = address(uint160(125)).sendValue(125);
    }
}
