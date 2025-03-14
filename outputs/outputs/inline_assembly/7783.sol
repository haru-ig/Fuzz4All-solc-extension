pragma solidity ^0.8.0;
contract L12 {
    uint x;
    constructor() public {
        x += 2+2+2+2;
    }
    function modify() public {
        x += 20 ether;
    }
}

pragma solidity ^0.8.0;
contract L12 {
    uint x;
    constructor() public {
        x += 2+2+2+2 ether;
    }
    function modify() public {
        x += 20+2+2+2+2+2+2;
    }
}
