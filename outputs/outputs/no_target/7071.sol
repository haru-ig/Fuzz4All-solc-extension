pragma solidity ^0.8.0;
contract Test {
    event myEvent(uint a, uint b, uint c);
    uint public id;
    uint public id2;
    constructor () { id = id2; }
    function setID(uint _id) public {
        id = _id;
        id2 = _id;
    }
    function setID2(uint _id) public {
        id2 = uint256(_id);
    }
}
contract Test {
    event myEvent(uint a, uint b, uint c);
    uint  public id;
    uint public id2;
    constructor () { id = id2; }
    function setID(uint _id) public {
        id = _id;
        id2 = _id;
    }
    function setID2_new() public {
        uint _id = uint256(_id);
        id2 = _id + 1;
    }
}
```

## Next steps

Now that you've learned how to use the Ethereal Test Suite, you can explore the [Ethereal Network](https:

## Reference

Solidity is an **open smart contract platform with smart compilers, interoperability and support for smart contracts**. In Ethereal, a [contract](https:

## Next

Visit our [**Documentation**](https:

[**Try our Testnet**](https:
[**Join our Discord**](https:

[**Subscribe to our newsletter**](https:

[**Explore our API**](https:
