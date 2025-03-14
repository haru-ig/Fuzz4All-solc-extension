pragma solidity ^0.8.0;
contract Mutated {
    function mutate() public pure returns (uint) { return 0x311CA000; }
    function returnFromMutate() public pure returns (uint) {
        return 0xDEADBEEF;
    }
}
contract ModifiersExample {
    modifier onlyOneModifier() {
        if(msg.value!= 0) {
            _;
        }
    }
}
contract InheritanceExample is ModifiersExample, Ownable {
    constructor () public { owner = msg.sender; }

    function transferOwnership(address _newOwner) public onlyOwner {
        require(_newOwner!= address(0), 'Error: New Owner is zero address');
        emit OwnershipTransferred(owner, _newOwner);
        owner = _newOwner;
    }
}
