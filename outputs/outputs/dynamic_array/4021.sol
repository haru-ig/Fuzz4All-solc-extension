pragma solidity ^0.8.0;
contract C {
    uint[] public data2;
    uint[] public data3;
    constructor() public {
        data2.push(1);
        data3.push(2);
    }
    receive() external payable {
    }
    function f() public {
        data2.pop(); data3.push(3);
        data2 = new uint[](0);
        data3.pop(); data2.push(4);
        data2.push(5);
        data3 = data2;
        data2.pop(); data2.push(6);
    }
}
```


## Testing
We have some special testing contracts located in the [contracts](contracts) folder as well as a couple of testing sol files, mostly of the contracts included in solidity standard library being used for testing.
It's easy to test using remix and also using the provided ```test/unit/``` folder. You have to use the ```truffle-config.js``` file to specify the mocha runner:
```javascript
module.exports = {
  mocha: {
    verbose: true,
    reporter: 'progress'
  }
};
```
