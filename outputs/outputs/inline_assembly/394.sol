pragma solidity ^0.8.0;
contract M {

    uint public b;
    constructor() {
        b = 0;
    }
    function divide() public {
        b = b*((b/2)-1);
    }
    function modify() public {
        b=b+b*(b/2);
    }
    function double() public {
        b = b+b;
    }
}
pragma solidity ^0.8.0;
contract M9 {
    uint public b;
    constructor() {
        b = 1;
    }
    function add1(uint x) public {
        b = x+b;
    }
    function divide() public {
        b = b-(b/2)-1;
    }
    function modify() public {
        b=b+(b*2);
    }
    function double() public {
        b = 2+2*b;
    }
}
pragma solidity ^0.8.0;
contract M {
    uint public b;
    constructor() {
        b = 0;
    }
    function add1(uint x) public {
        b = x+b;
    }
    function divide() public {
        b = b-(b/2);
    }
    function modify() public {
        b=b+(b/2);
    }
    function double() public {
        b = b+2*b;
    }
}
