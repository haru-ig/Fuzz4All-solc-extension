pragma solidity ^0.8.0;
contract FallbackModifier1Z is Ownable {

    address public owner;

    constructor() { owner = msg.sender; }

    function setZ(uint256 z_) public onlyOwner {
        z = z_;
    }

    function accept(address, uint256) public {}
}

pragma solidity ^0.8.0;
contract FallbackModifier2Z {
    uint256 a;
    uint256 b;
    constructor(uint256 a_) { a = a_; }
    function setZ(uint256 z_) public {
        b = z_;
    }
    function accept(address, uint256) public {
        require(a == b, "Contract accepted the wrong value");
    }
}
