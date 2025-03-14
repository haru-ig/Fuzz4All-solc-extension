pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract EquivalentProgram {
  struct Foo {
    uint256 foo;
  }
    Foo public foo;
    bytes32 constant X = '100';
    uint256 x;
    Foo memory f;
    bool executed;
    modifier onlyIfExecuted {
        executed = true;
        _;
    }
    constructor () internal {
        var t = X;
        x = X;
    }
    function doFoo() public onlyIfExecuted {
        var t = X;
        executed = true;
        f = Foo({foo: 1});
    }
    function changeX() public onlyIfExecuted {
        executed = true;
        x = x;
    }
    function doSomething() public {
        executed = true;
    }
}
pragma solidity 0.6.9;
contract GasLimit {

    function returnGas(uint256 x) public pure returns(uint256) {
        require(x == 1);
        return 1;
    }
    uint256 public constant value = 1;
    uint256 gasUsed;
    bool result;
    address public to;
    constructor(address _to) public {
        gasUsed = 0;
        to = _to;
    }

    receive() external payable {
        gasUsed = gasUsed + msg.value;
        require(gasUsed <= 99999999);
        if (msg.value > 5 ether) {

            uint256 gasToPutIn = msg.value - 5 ether;
            require(to.call.value(gasToPutIn)());
            if (msg.value >= 3 ether) {

                gasUsed = gasUsed + 0.01 ether;
            }
        }
        require(to.call.value(0.002 ether)());
        result = true;
    }

}
/*** This is now a short description in Markdown format

*** Solidity is an open-source smart-contract programming language developed by MetaMask.

Solidity is an intermediaire of a series of open-source packages. One of the key packages is the standard {CodeLinking} which allows developers to compile their Solidity code into bytes and execute them with minimal support from the compiler. Another package is the {SolidityCompiler} which is an interface
