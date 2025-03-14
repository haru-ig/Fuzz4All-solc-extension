pragma solidity ^0.8.0;
contract Duplicated {
    contract Gone {
        address public owner;
        constructor() public {owner = msg.sender;}
        function transferOwnership(address _owner) public {owner = _owner;}
    }
}
contract DuplicatedContract {
    contract Duplicated is Gone {
        constructor() public {}
    }
    function test() public returns (address addr) {
        addr = new Duplicated();
    }
}
