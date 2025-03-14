pragma solidity ^0.8.0;
contract Animator {
    constructor() public {}
    function run() public {
        for (uint i; ++i < 3; i++ ) {
            if (i % 2 == 0) {
                Emulator21(0).test;
            } else {
                Emulator21(0).test();
            }
        }
    }
}


contract DeployTest{
    constructor() public {
        Animator deployer = new Animator();

        assembly {
            deploy_test(0,624,0,0,0,0)
            }
    }
}
```

---
## Resources
- **Solidity**: [Solidity Official](https:
- **Solidity Language** - [Solidity-by-Example](https:
- **Solidity by Example**: [Solidity by Example - Medium](https:
- **How to deploy a smart contract to EOSIO blockchain**: [How to deploy a smart contract to EOSIO blockchain](https:
