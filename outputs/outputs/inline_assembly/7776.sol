pragma solidity ^0.8.0;
contract L22 {
    constructor() public {
        modify();
    }
    modifier modifier12 {
        x += 2 ether;
        _;
    }
    function modify() public modifier12 {
        x += 2 ether;
    }
}

pragma solidity ^0.8.0;
contract L32 {
    uint x;
    constructor() public {
        x += 2 ether;
    }
    function modify() public {
        x += 2 ether;
    }
}
