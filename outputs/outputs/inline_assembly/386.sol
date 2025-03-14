pragma solidity ^0.8.0;
contract M9 {
    uint b;
    constructor() {
        b = 1;
    }
    function divide() public {
        b = b-(b / 2.);
    }
    function modify() public {
        b=b+b/2.;
    }
    function double() public {
        b = b+b;
    }
}

pragma solidity ^0.8.0;
contract M9 {
    uint b;
    constructor() {
        b = 1;
    }
    function divide() public {
        b = b-(b+b/2.);
    }
    function modify() public {
        b = b+b;
    }
}


```

</details><br>
