pragma solidity ^0.8.0;
contract F1 {
    function add_internal_2(uint a, uint b) public view returns (uint) {

        assembly {
            a := a ^ b
            b := a
        }
    }
}
```

## Resources

- [Solidity in Depth](https:
- [Yul Language Guide](https:

## Etc

- [Yul Language Documentation](https:
