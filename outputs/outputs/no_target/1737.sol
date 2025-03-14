pragma solidity ^0.8.0;
contract Mutate0019 {
    address _a;

    constructor (uint _n) public {
        _a = address(uint160((3*_n) / 2));
    }
    function modifyAddress(address a) public {
        _a = a;
    }
    function modify2Address(uint b) public {
        _a = address(uint160((3*_b)));
    }
}
