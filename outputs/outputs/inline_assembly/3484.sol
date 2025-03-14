pragma solidity ^0.8.0;
contract MutatedContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    uint constant FOUR = 4;
    uint data_to_change;
    modifier set(uint _to_set) {
        data_to_change = _to_set;
        _;
    }
    constructor (){
        set(ONE);
        set(ZERO);
    }
    function set2(uint _to_set) public {
        set(_to_set);
    }
    function set3(uint _to_set) public {
        set(_to_set);
    }
    function change() public {

      data_to_change = THREE;
      data_to_change = FOUR;
      set(TWO);
    }

}


```
<fim_middle>contract AdvancedContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    uint constant FOUR = 4;
    uint  data_to_change;
    uint _value;
    function change (uint _value) public onlyGet(_value) {
        uint temp = ONE;
        _value = ONE;
        _value = THREE;
        _value = FOUR;
        _value = TWO;
        _value = THREE;
        _value = ONE;
        _value = ONE;
    }
}
```

## Advanced Modifiers

In Solidity, we can also implement our own advanced modifiers. They don't exist in Solidity by default, but they can be easily added.

These modifiers allow us to define functions with different requirements based on the inputs they receive.

```
pragma solidity ^0.8.0;
contract AdvancedContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    uint constant FOUR = 4;

    uint  data_to_change;
    uint _value;
    modifier onlyGet (uint _value) {
        assert(_value == ONE);
        require(data_to_change == FOUR);
        _;
    }

    modifier onlyPut (uint _value) {
        assert(data_to_change == TWO);
        require(data_to_change == ONE);
        _;
