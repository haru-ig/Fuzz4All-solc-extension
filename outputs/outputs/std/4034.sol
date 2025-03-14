pragma solidity ^0.8.0;
 contract Mutated {
    uint[] private array;
    function get() public view returns (uint[] memory) { array = new uint[](array.length+1); array[array.length] = 5; return array; }

    function set(uint[] memory a) public { array = a; }
    function setNext(uint i, uint next) public { head.next = next; }

    uint[1] a;
}

pragma solidity ^0.8.0;
 contract NotSufficientFunds {
    address payable _payable;
    function test() public payable { _payable.transfer(5); }
}

pragma solidity ^0.8.0;
contract NotSufficientGas {
    function get() public pure { throw; }
}
