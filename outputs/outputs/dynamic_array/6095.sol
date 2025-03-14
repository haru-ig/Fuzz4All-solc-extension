pragma solidity ^0.8.0;
contract Test30001 {
    address public adr;
    bool private valid;

    constructor (address _adr) public {
        emit Log();
        adr = _adr;
    }
    fallback () external {
        emit Log();
    }
    event Log ();
}

```
## Contributing

Contributions welcome. There are two kinds of contributions:

**Good first issue:** A bug fix or typo. Try to find in the [bug report section](https:

**Bug report:** A correct bug for us to know. Open a [new issue](https:

## License

[MIT](../blob/main/LICENSE)
