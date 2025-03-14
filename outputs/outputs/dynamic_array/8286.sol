pragma solidity ^0.8.0;
contract Solidity1 {
    uint[5] public b;
    uint public a;
    constructor() public {
        a = 1;
    }
    function myFunction() public {
        b = b + [1,1,1,1,1] + 1;
        b = b + [1,1,1] + a + 1;
    }
}

pragma solidity ^0.8.0;
contract Solidity0 {
    uint[5] public b;
    uint public a;
    constructor() public {
        a = 1;
    }
    function myFunction() public {
        b = b + [1,1,1,1,1];
        b = b + [1,1,1];
        b = b + a;
    }
}

pragma solidity ^0.8.0;
contract Contract {
    uint[5] public b;
    uint public a;
    constructor() public {
        a = 1;
    }
    function myFunction() public {
        b = b + [1,1,1,1,1];
        b = b + [1,1,1];
        b = b + a;
    }
}
