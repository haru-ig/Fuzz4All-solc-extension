pragma solidity ^0.8.0;
contract Mutate0014 {
    address _a;
    address immutable _A;
    constructor (uint _n) public {
        _A = address(uint160(uint(uint(_n)/2)));
    }
    function modifyAddress(address a) public {
        _a = a;
    }
    function modify2Address(uint b) public {
        _a = address(uint160(uint(uint(b)/2)));
    }
}
