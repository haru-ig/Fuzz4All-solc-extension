pragma solidity ^0.8.0;
contract Fallback {
    fallback () external {}
}
contract Fallback2 {
    fallback () external { return address(0); }
}
contract Fallback3 {
    fallback () external returns (uint) { return 1; }
}
contract Fallback4 {
    fallback () external { revert(""); }
}

pragma solidity ^0.8.0;
contract Test1 {
    constructor() {}
    function method() public {
        Caller caller = new Caller();
        caller.get();
    }
}
pragma solidity ^0.8.0;
contract Test2 {
    constructor() {}
    function method() public {
        Caller caller = new Caller();
        caller.get();
        caller.pay(1);
    }
}
pragma solidity ^0.8.0;
contract Test3 {
    uint storedUint;
    constructor() {
        storedUint = 1;
    }
    function method() public {
        Caller caller = new Caller();
        caller.get();
    }
    function methodUint() public {
        Caller caller = new Caller();
        caller.pay(1);
        storedUint;
    }
}
pragma solidity ^0.8.0;
contract Test4 {
    uint storedUint;
    constructor(uint) {
        storedUint = 5;
    }
    function method() public {
        Caller caller = new Caller();
        caller.get();
        storedUint;
    }
    function methodUint(uint) public {
        Caller caller = new Caller();
        caller.pay(1);
    }
}
