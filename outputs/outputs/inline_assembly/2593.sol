pragma solidity ^0.8.0;
contract C {
uint public x;
    constructor()  public {
        x = 2;
    }
    function test() public {
        x += x;
    }
}

pragma solidity ^0.8.0;
contract C {
uint public x;
    constructor()  public {
        x = 1;
    }
    function test() public {
        uint _temp;
        assembly {
            return(_temp := x);
        }
        x = _temp;
    }
}
pragma solidity ^0.8.0;


assembly {







  var m := mload(0xDEADBEEF)
}
```

## Advanced Topics
