pragma solidity ^0.8.0;
contract Say {
    uint constant private MESSAGE_LENGTH = 20;

    function say(uint[MESSAGE_LENGTH] memory x) public pure {
        for (uint i = 0; i < MESSAGE_LENGTH; i++) {
            if (i == x[i]) {
                assembly {

                    sp-apply(0, add(0, 60))
                    return
                }
            }
        }
    }

    function say2() public pure {
        say(0x00);
        say(0x55);
    }
}
```

## 6. Advanced: Creating your own modifiers

We will continue with our new custom modifier system. We would like to modify the `transferFrom` function in the `Ownable` contract to prevent the sender of the tokens from executing the function if they fail the condition. Using a custom modifier to check the condition is important since the condition could be met by any number of reasons. The example in the next section shows a more in-depth condition that requires a lot of if-else-else statements.

Create a new file `src/modifiers/OwnableModifier.sol` under `contracts/Modifiers/` and add the following code.

```
pragma solidity 0.8.10;

import "./Ownable.sol";

abstract contract OwnableModifier is Ownable {

    modifier onlyOwner() {
        require(msg.sender == _msgSender());
        _;
    }

    modifier onlyOwnerOrOwner(address _owner) {
        address msender = _msgSender();
        bool is_owner = msender == _owner || _owner == address(0);
        require(is_owner || is_owner_or_admin(), "Must be owner or admin");
        _;
    }

    modifier onlyOwnerOrAdmin() {
        uint256 _admin = admin();
        bool is_admin = _admin!= 0;
        bool is_owner = _msgSender() == _admin;
        bool is_owner_or_admin = is_owner || is_admin;
        require(is_owner_or_admin, "Must be owner or admin");
        _;
    }
}

```

The new custom modifier adds checks to the `transferFrom` function. A condition is met if the current function call is made to a contract other than `address(0)`, if `msg.sender` is also `address(0)` or the contract that the `transferFrom` function is sent from is not `owner()` or `ADMINISTRATOR`. If the check is met then `msg.sender` is not set
