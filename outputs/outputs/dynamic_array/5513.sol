pragma solidity ^0.8.0;
contract Test72 {
    uint256 public num1;
    uint256 public num2;
    constructor(uint256 _num1, uint256 _num2) public {
        num1 = _num1;
        num2 = _num2;
    }
    function increment1() public returns (uint256) {
        num1 = num1.add(1);
        return num1;
    }
    function increment2() public returns (uint256) {
        num2 = num2.add(1);
        return num2;
    }
}

pragma solidity ^0.8.0;
contract Test73 {
    function foo(uint256[] storage storageArray, uint256[] storage dynamicArray) public {
        for(uint i = 0; i < 100000; i++) {
            storageArray[i].sub(1);
            dynamicArray[i];
        }
    }
}
