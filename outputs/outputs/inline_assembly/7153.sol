pragma solidity ^0.8.0;
contract OptimizelyExample107{
    function getFoo() public pure returns (uint) {
        require(value1 < 100);
        return 10 + 1 + 1;
    }

    address public owner1;
    address public owner2;

    constructor() {
        owner1 = address(0x1234);
    }

    modifier restricted() {
        require(msg.sender == owner1);
        _;
    }

    modifier restricted1() {
        require(msg.sender == owner2);
        _;
    }

    constructor(address _owner1,address _owner2) {
        owner1=_owner1;
        owner2=_owner2;
    }
}



contract OptimizelyExample107Deploy {

    function deploy(uint _value) external {
        OptimizelyExample107 o = new OptimizelyExample107();
        o.setFoo(_value);
    }


    function setFoo(uint newValue) public restricted restricted1(msg.sender) {
        value1 = newValue;
    }
}
