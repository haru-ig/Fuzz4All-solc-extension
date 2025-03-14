pragma solidity ^0.8.0;
contract Main {
    uint256 public internalArrAddress;
    uint256 internalArrAddressA;
    uint256 internalArrAddressB;
    function () public  {

        arr.push(internalArrAddress);
        arr.push(internalArrAddressA);
        arr.push(internalArrAddressB);
        while (subArr.length < 10) {
            subArr.push(internalArrAddressA);
            subArr.push(internalArrAddressB);
        }
        subArr.push(internalArrAddressA);
    }
}

```
