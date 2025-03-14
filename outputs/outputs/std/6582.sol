pragma solidity ^0.8.0;
contract Mutate16 {
    pragma public;
    uint public x;
    uint x;
    function setX (uint256 x) only public {
        this.x = x;
    }
    function getX(uint256 y) view public returns(uint256) {
        return this.x;
    }
    function call () returns (uint256 x) {
        x = this.x;
    }
}

contract Mutate17 {
    address public constant owner = msg.sender;
    constructor() {}
    modifier onlyOwner {
        require(msg.sender == owner, "only owner can call external function");
        _;
    }
    function withdraw() onlyOwner public {
        require(address(this).balance > 0, 'no money yet');
        address(address(this)).transfer(owner, address(this).balance);
    }
}

contract Mutate18 {
    uint256 internal constant x = 100000;
    function externalFunction() public returns (uint256) {
        return this.x;
    }
    function main() external {
        require((externalFunction()).eq(x), 'not correct');
    }
}

pragma solidity ^0.8.0;
contract ComplexContract {
    address public constant owner = msg.sender;
    bool public active = false;
    bool public flag = true;
    modifier Active {
        require(active, "Inactive contract");
        _;
    }
    modifier On {
        require(!flag, "Already on");
        _;
        flag = false;
    }
    modifier Off {
        require(flag, "Already off");
        flag = true;
        _;
    }
    constructor() {
        flag = false;
    }

}
