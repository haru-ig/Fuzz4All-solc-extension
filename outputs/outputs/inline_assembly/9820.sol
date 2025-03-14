pragma solidity ^0.8.0;
contract SemanticallyDifferentXulContract {
    constructor () {
    }
    [constructor] function a() public {
    }
    function b() public {
        c();
    }
    function c() public {
        c();
    }
}

pragma solidity ^0.6.0;
contract Example {
    uint public counter;
    constructor() {
        counter = 5;
    }
    function loop() public {
        while (counter > 0) {
            counter -= 1;
        }
    }
}

pragma solidity ^0.6.0;
contract Example {
    uint public counter;
    function loop() public {
        counter = 10;
        while (true) {
            counter -= 1;
            assembly {
                counter := counter - 1
            } if (counter == 0) break;
        }
    }
}
```


## Advanced
