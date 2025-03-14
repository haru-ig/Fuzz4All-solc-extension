pragma solidity ^0.8.0;
contract Mutated {
    struct Data {
        string foo;
    }
    Data memory d;
    function fTest() public pure {
    	Data memory new_;
        new_.foo = "bar";
        uint256 newFooSize = new_.foo.length;
     	if (newFooSize > 10000) revert();
        d = new_;
    }
}
```
