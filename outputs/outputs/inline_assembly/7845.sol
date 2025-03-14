pragma solidity ^0.8.0;
contract L23{
    constructor() public {
    }

    modifiers internal {
        require(false);
    }

    function modifyCalled() public internal {
    }
}

pragma solidity ^0.8.0;
contract L23{
    constructor() public {
    }

    structure Data{
        uint num;
    }

    function modifyCalled() public {
        Data storage data = Data(uint(0xcafe));
        assert(data.num > 100);
        data.num += 100;
    }
}

pragma solidity ^0.8.0;
contract L23{

    mapping (address => Data) balances;

    constructor() public { }

    struct Data{
        uint num;
    }

    function modifyCalled() public {
        Data storage data = balances[msg.sender];
        assert(data.num > 100);
        data.num += 100;
    }
}
```

## Contributing

We encourage everyone to contribute to Solidity and provide feedback and additions! Before submitting any PR you should run the tests locally. Once they are all passing the code will be merged.

## Reference

- [Solidity Language Reference](https:
- [How To Get Started with Solidity](https:
