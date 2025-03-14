pragma solidity ^0.8.0;
contract ValueWithFallback3 {
    address public value;
    constructor(address _caller) {
        value = _caller;
    }
    function example4(uint x, uint y) public payable {
        value = address(y);
        value = msg.value;
    }
    function example5(uint x, uint y) public payable {
        value = address(y ^ x);
    }
}

pragma solidity ^0.8.0;
contract ValueWithFallback4 {
    address public value;
    constructor(uint x, uint y) {
        value = address(y);
    }
    function example6(uint x, uint y) public payable {
        value = address(address(y)).call{value: msg.value}(abi.encodeWithSelector(ValueWithFallback6.fallback.selector));
        value = abi.encodeWithSelector(ValueWithFallback6.selector, x);
    }
}
contract ValueWithFallback6 {
    function fallback(address contractValue) public payable {}
    function selector() public pure returns(uint256) {}
}
