pragma solidity ^0.8.0;
contract Mutated {
    function mutable() public {
        emit Mutable();
    }
    event Mutable();
    fallback() payable {}
}


pragma solidity ^0.8.0;
contract Long {
    address owner;
    function long () public {
        owner.transfer(msg.value);
    }
}
