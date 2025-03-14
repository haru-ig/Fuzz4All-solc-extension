pragma solidity ^0.8.0;
contract MyLib{
    uint counter;

    modifier simpleModify(){
        counter += 4;
        _;
    }

    function incremented(){
        simpleModify{gas:100000000}( );
    }

    event Increment(uint val);
    event Decrement(uint val);

    function increment(){
         simpleModify{gas:10000000}( );
         emit Increment(counter);
    }

    function decrement(){
         simpleModify{gas:10000000}( );
         emit Decrement(counter);
    }

    function get() public view returns(uint){
        return counter;
    }
}
```
---
