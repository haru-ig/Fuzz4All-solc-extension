pragma solidity ^0.8.0;
address someAddress = 0x42;
uint[] memory numbers = [1,2,3,4];
address[] memory addresses = [someAddress, 0x0];
address[] memory addresses2;
function f() public {
    uint sum = 0;
    for (uint i=0; i < numbers.length; i++){
        sum += addresses[i].call(abi.encodeWithSignature("add(uint)", numbers[i]));
    }
    sum = addresses2.reduce(Lib.add, sum);
    sum = addresses2.reduce(Lib.div, sum);
    sum = addresses2.reduce(Lib.mul, sum);
    I i = I(someAddress);
    sum = i.add.value(2)(sum);
    sum = i.div(sum);
    sum = i.mul(sum);
    }
    I i2 = I(someAddress);
    sum = i2.add.value(2)(sum);
}
```
