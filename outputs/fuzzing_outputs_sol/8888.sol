pragma solidity ^0.8.0;
contract Mutated {
    fallback;
}
contract Caller {
    function g() public view returns (address a) {
        a = address(new Mutated);
    }
}
