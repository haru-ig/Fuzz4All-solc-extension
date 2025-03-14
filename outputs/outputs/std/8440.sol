pragma solidity ^0.8.0;
contract ArrayMutationsC6420 {
    uint[] private numbers;
    uint private x;
    function setA(uint x_, uint[] memory _numbers) public returns (uint) {
        isA = false;
        x = x_;
        numbers = _numbers;
    }
    function getA() public view returns (uint) {
        return x;
    }
}

pragma solidity ^0.8.0;
contract ArrayMutationsC6423 {
    uint private x;
    uint[] private numbers;
    function setA(uint x_, uint[] memory _numbers) public returns (uint) {
        isA = false;
        x = x_;
        numbers = _numbers;
        updateNumbers();
    }
    function getA() public view returns (uint) {
        return x;
    }
    function updateNumbers() internal {
        numbers[2] = 1;
        numbers[4] = 1;
        numbers[6] = 10000;
        numbers[1] = 1;
        isA = true;
    }
}
