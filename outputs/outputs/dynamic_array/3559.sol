pragma solidity ^0.8.0;
contract G {
    mapping (uint => uint) x;
    constructor() public {
    }
    function g() public {
        x[0] = 0;
    }
}

pragma solidity ^0.8.0;
contract G {
    mapping (uint => uint) x;
    constructor() public {
        x[0] = 0;
    }
    function g() public {
        x[0] += 1;
    }
}
