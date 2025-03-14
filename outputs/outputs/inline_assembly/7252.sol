pragma solidity ^0.8.0;
contract Mutator {
    uint public value = 7;
    function mutate() payable public {
        if (!address(this).isContract()) revert("Empty contract is not allowed");
        assembly { value := 134 }
        emit Log(value);
    }

    event Log(uint32 _value);
}

pragma solidity ^0.8.0;
contract Mutator {
    function mutate() public {
        if (!address(this).isContract()) revert("Empty contract is not allowed");
        mutate2();
        emit Log(msg.sender);
    }

    function mutate2() public { }

    event Log(address);
}
