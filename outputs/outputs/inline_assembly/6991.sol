pragma solidity ^0.8.0;
struct Counter {
}
library Greeter {
    Counter internal counterStore;
    constructor() {
    }
    function getCounter() public view returns(Counter memory) {
        Counter memory memoryInstance = counterStore;
        counterStore = new Counter();
        return memoryInstance;
    }
}


pragma solidity ^0.8.0;
contract OptimizelyExample89 {
    address public owner;
    Greeter internal counterStore;
    constructor() {
        owner = msg.sender;
        counterStore = new Greeter();
    }
    function greet() public {
        Counter memory variable = counterStore.getCounter();
        bool isCalled = false;
        if (variable == 0) {


            counterStore.getCounter();
        }
        isCalled = true;


        if (isCalled) {
            isCalled = false;
            greet();
        } else {
            counterStore.getCounter();
            greet();
        }
    }
}
```
