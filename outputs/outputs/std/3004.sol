pragma solidity ^0.8.0;
contract ArrayMutations {
    constructor(uint[] memory _numbers) public {
        _numbers[0] = 0;
        uint i = 1;
        while(i < _numbers.length){
            _numbers[i] = 0;
            i+= 1;
        }
    }
}
```
