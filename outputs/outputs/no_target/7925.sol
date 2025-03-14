pragma solidity ^0.8.0;
contract TestMutatorNonConstructor {
    address public owner;
    function add (address _val) public {
        require(owner == address(0), "address: The address is already added");
        owner = _val;
    }
    function remove() public {
        owner = 0;
    }
}
