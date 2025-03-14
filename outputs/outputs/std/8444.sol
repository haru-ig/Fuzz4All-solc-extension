pragma solidity ^0.8.0;

contract ArrayMutationsC6419 {
    uint[] public numbers;
     function setA() public {
       numbers.push(42);
       numbers.pop();
       numbers.push(23);
       numbers[4] = 210;
       numbers.sort();
       numbers.insert(4, 23);
    }
    function getA() public view returns (bytes memory) {
        assembly { return(mload(0x40)) }
    }
    function getB() public (uint) {
        return numbers.length;
    }
    function setB(uint i, uint x) public {
        uint[] storage numbers = this.numbers;
        require(i >= 0 && i < numbers.length, "Index out of bounds");
        numbers.length--;
        numbers[i] = x;
    }
}

contract ArrayMutationsC6428 is Array, ArrayMutationsC6419 {
    uint public x;
    function setA() public {
        x = 42;
    }
    function getA() public view {
        require(x > 0);
    }
    function getB() public view {

        return 44;
    }
    function setB(uint i, uint x) public {
        uint[] memory numbers = this.numbers;
        require(i >= 0 && i < numbers.length, "Index out of bounds");
        numbers.length--;
        require(x > 0);
        numbers[i] = x;
    }
    function getC() public view {
        uint[] memory numbers = this.numbers;
        require(numbers[0] > 0);
        uint[9999] memory numbers = [];
        uint c = 0;
    }
}

pragma solidity ^0.8.0;
contract ArrayMutationsC6427 {
    uint[] public numbers;
    function setA() public {
        numbers.push(42);
        numbers.pop();
        numbers.push(23);
        uint[] storage numbers = this.numbers;
        numbers.length--;
        numbers[numbers.length++ - 1] = 2 * 42;
    }
    function getA() public view returns (bytes memory) {
        return bytes(numbers);
    }
    function getB() public view returns (uint) {
        return 42;
    }
}

pragma solidity ^
