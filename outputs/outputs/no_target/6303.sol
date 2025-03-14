pragma solidity ^0.8.0;
contract C {
    function get(uint) public override pure returns (address) {}
}
contract D is C {
    function get(uint) public pure override returns (address) {}
}
contract Contract {
    function getContract() public returns (address) {}
}
contract A is Contract {
    function getContract() public returns (address) override {
        return address(0x0);
    }
    function get(uint) public pure returns (address) {
        return address(0x0);
    }
}
contract B is A, D {
    function get(uint) public override pure returns (address) {
        address addr = address(0x0);
    }
}
contract B2 is B {
    function get(uint) public override pure returns (address) {
        address addr = address(0x0);
    }
}
contract P {
    function getContract(uint) public returns (address) {}
}
contract Q is P {
    function setContract(uint x) public returns(address) {}

}
contract A2 is Q {
    function setContract(uint x) public override returns(address) {}
}
contract P2 {
    function setContract(uint x) public returns (address) {
        address addr = address(0x0);
    }
}
contract Q2 is A2, P2 {
    function setContract(uint x) public returns (address) override {
        address addr = address(0x0);
    }
}
contract Greensight {
    function getContract(uint x) public returns (address) {
        uint addr = 0x0;
    }
}
contract Redsight {
    function setContract(uint x) public returns (bool) {
        address addr = 0x0;
        return true;
    }
}
contract Green is Greensight, Redsight {}
contract Blue {
    function setContract(uint x) public returns(address) {
        address addr = 0x0;
        return addr;
    }
    function setContract2(uint x) public returns (address) {
        address addr = 0x0;
        return addr;
    }
}
contract Cray {
    function setContract(uint x) public returns (bool) {
        address addr = 0x0;
        return true;
    }
    function setContract2(uint x) public returns(address) {
        address addr = 0x0;
        return addr;
    }
}
contract TruffleTester {
    function testFunction(uint x) public {
        Greensight g;

        Blue b;

        Blue c;
