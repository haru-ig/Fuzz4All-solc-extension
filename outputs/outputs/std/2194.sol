pragma solidity ^0.8.0;
contract MutatedC {
    uint256 x;
    uint256 y;
    constructor(){
    }
    modifier onlyOwner {
        require(msg.sender == tx.origin, "Caller is not the owner");
        _;
    }
    function setFoo() public onlyOwner {
        x = x * 5;
        y = y * 5;
    }
    function getFoo() public view returns (uint256) {
        return x + y;
    }
}

pragma solidity ^0.8.0;
contract MutatedD {
    uint8 x;
    constructor(){
    }
    modifier onlyOwner {
        require(msg.sender == tx.origin, "Caller is not the owner");
        _;
    }
    function setFoo() public onlyOwner {
        x = uint8(2**256);
    }
    function getFoo() public view returns (uint8) {
        return x;
    }
}

pragma solidity ^0.8.0;
contract MutatedE {
    uint32 a;
    uint32 b;
    constructor () {
    }
    modifier onlyOwner {
        require(msg.sender == tx.origin, "Caller is not the owner");
        _;
    }
    function setFoo() public onlyOwner {
        a = a + b;
        b = a ^ b;
    }
    function getFoo() public view returns (uint32) {
        return (a ^ b);
    }
}

pragma solidity ^0.8.0;
contract MutatedF {
    uint8 a;
    uint8 b;
    constructor () {
    }
    modifier onlyOwner {
        require(msg.sender == tx.origin, "Caller is not the owner");
        _;
    }
    function setFoo() public onlyOwner {
        a += b;
        b ^= a;
    }
    function getFoo() public view returns (uint8) {
        return a ^ b;
    }
}
