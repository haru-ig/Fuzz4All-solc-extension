pragma solidity ^0.8.0;
contract Mutater8 {
    Mutater7 internal senderContract;
    Mutater7 public receiverContract;
    uint32 internal _value;
    function callFromFunction() public {
        receiverContract = new Mutater7();
        senderContract = new Mutater7();
        receiverContract.mutatedFunction(120);
        senderContract.mutatedFunction(12);

        uint8 value1;
        (value1,) = senderContract.call.value(20)("");
        assert(value1 == 0);

        uint8 value2;
        (value2,) = senderContract.send.value(20)("");
        assert(value2 == 0);
    }
}

```
## Reference Links

- <https:
