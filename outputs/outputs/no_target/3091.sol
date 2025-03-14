pragma solidity ^0.8.0;
contract fourth{
    function g() public pure returns (uint) {
        unchecked {
            return 10;
        }

    }
}


pragma solidity ^0.8.0;
contract test {
    constructor () public {
        throw 1;
        log1(10, 20);
        log2(100);
        setstate();
        add(1);
        sub(5);
    }

    function add(uint256 _a) public pure returns(uint256) {
        return _a + 1;
    }

    function sub(uint256 _b) public pure returns (uint256) {
        return _a - 1;
    }

    function setstate() public {
       state[msg
