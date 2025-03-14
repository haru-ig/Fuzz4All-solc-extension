pragma solidity ^0.8.0;
contract Cast_equivalent {
    uint private amount = 2;
    uint public result;
    modifier only_function() {
        result = amount;
        _;
    }
    function add(uint256 a, uint256 b) public only_function {
        amount += b;
    }
    function sub(uint256 a, uint256 b) public only_function {
        require(b <= a);
        amount -= b;
    }
    function mult(uint256 a, uint256 b) public only_function {
        amount *= b;
    }
    function div(uint256 a, uint256 b) public only_function {
        amount /= b;
    }
    function square() only_function returns (uint256) {
        return amount ** 2;
    }
    function sqrt() only_function returns (uint256) {
        return sqrt(amount);
    }
    function mod() only_function returns (uint256) {
        return amount % 3;
    }
    function max() public only_function returns (uint256){
        return amount < 50? amount : 50;
    }
    function min() public only_function returns (uint256){
        return amount > 10? amount : 10;
    }
    function print() only_function {
        bytes memory str = bytes(amount);
        assembly {
            print(mload(str), mload(add(str, 32)))
        }
    }
    constructor() public {
    }
    fallback() external {
        print();
    }
}
