pragma solidity ^0.8.0;
contract MutatedExamples8 {
    uint[5] public a = [1, 2, 3, 4, 5];
    constructor() public {
        mutated(uint(-x), 0);
    }
    function mutated(uint, uint) public returns(uint){
        uint r;
        assembly {





            r := x + gas;
        }
        return r;
    }
}

pragma solidity ^0.8.0;
contract MutatedExamples9 {
    function mutated(uint[1][] memory o, uint i) public returns(uint y){}
}

```
