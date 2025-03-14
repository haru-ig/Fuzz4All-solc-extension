pragma solidity ^0.8.0;
contract Mutated2 {
    function mutated() public returns (uint){
        require(b!= address(0), "Mutated.AddressNotZero");
        address payable self = payable(msg.sender);
        return self.balance;
    }
}
