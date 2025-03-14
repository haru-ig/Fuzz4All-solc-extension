pragma solidity ^0.8.0;
contract MyContract {
    function method() public pure returns(bool) {
        return true;
    }
}
```
---
# Pragmas
The "pragma" keyword is a block of code that defines special variables that can be used to change the compiler behavior in certain points.

This contract compiled from the previous generation, using compiler v0.5 is valid, but using compiler v0.8 results in an unsolvable issue, as the contract code contains invalid code.

## Contract creation
Pragmas can always be used at the beginning of any contract definition. Contracts can be created as any other Solidity contract.

```solidity
contract MyContract {
   address my_address;
}

pragma solidity >= 0.5.5 < 0.8.9;
contract MyContract {
   address my_address;
}

contract MyContract {
   address my_address;
}
```

## Global functions
The "log0" family of global functions is new to the language, and introduces two new arguments, and one new internal state that is created during contract execution. If the value of the internal state is non-zero, or is greater than "0x100000000000000000000000000000000000000000000000000000000000000000", this log message is ignored.

```solidity
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

pragma solidity ^0.5.9;
contract MyContractBase is Ownable {
    bytes32 constant _LOG_MESSAGE_PREFIX = "0x410504c080875a20";

    uint internal _data;

    function log0(uint x) internal {
        if (x!= 0) { return; }
        bytes memory log_message = abi.encodePacked(_LOG_MESSAGE_PREFIX, x);
        Ownable.transferOwnership(_msgSender(), true);
        Ownable.contractCreated(_contractCreated());
        Ownable.contractUpdated(_contractUpdated());
        Ownable.contractDestroyed(_contractDestroyed());
        message(bytes4(keccak256(abi.encodePacked(this.contractCreated(), log_message))), log_message);
    }
}
```
## Revert
If a call creates a revert operation, a revert log message will be produced when the call is executed.

```solidity
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";
pragma solidity >= 0.5.5;
contract Ownable {
   address public owner;

   event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

   constructor () public {
