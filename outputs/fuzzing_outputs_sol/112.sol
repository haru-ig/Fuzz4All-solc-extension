pragma solidity ^0.8.0;
contract MyMutationsCallAndFallbackFunctionFourPlusFallbackFunction {
    constructor() { }
    fallback() external payable {}
    function getData(uint k, uint256 _x) public view returns (uint256 x) {
        x = _x + 5;
        if (x < 4) {
            uint i;
            for (i = 1; _x & 1 == 0; i++) {
                x >>= 1;
            }
            x += 2 * i;
        }
    }
}



pragma solidity ^0.8.0;
contract A {
    contract B {
        contract C {
            uint256 value;
            constructor(uint256 _initialValue) {
                require(msg.sender == address(this), "Wrong contract sender");
                value = _initialValue;
            }
            function get(uint256 x) external view returns (uint256 y) {
                require(x <= value, "Invalid value");
                y = x + 1;
            }
            fallback() external payable {
            }
        }
    }
    C constant c = new C(15);
    function get() public view returns (uint) {
        B b = new B(c.get(1));

        require(b.c.value > 0, "Empty contract");
        return b.c.value;
    }
}
