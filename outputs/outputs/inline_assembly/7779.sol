pragma solidity ^0.8.0;
contract L12 {
    uint x;
    constructor() public {
        assembly {
            x := 3
        }
    }
    function modify() public {
        x += 2 ether;
    }
}
