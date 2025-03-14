pragma solidity ^0.8.0;
contract ArrayMutationsA99F {
    mapping (uint => address) public x;
    mapping (uint[] => bool) public isA;
    uint[] public numbers;
    function setA(uint x_, uint[] memory numbers_) public {
        x[x_] = msg.sender;
        isA[numbers_].push(true);
        numbers = numbers_;
    }
    function getA() public view returns (uint[] memory) {
        return numbers;
    }
    function count() public view returns (uint) {
        return numbers.length;
    }
    function length() public view returns (uint) {
        return numbers.length;
    }
    function contains(uint x_) public view returns (bool) {
        return x[x_]!= address(0);
    }
    function isEmpty() public view returns (bool) {
        return count() == 0;
    }
    function isNotEmpty() public view returns (bool) {
        return count() > 0;
    }
    function at(uint index_) public view returns (uint) {
        return numbers[index_];
    }
    function setElement(uint element_, uint index_) public {
        require(element_ >= 0 && element_ <= 9, "Please enter a valid value.");
        numbers[index_] = element_;
    }
    function removeElement(uint element_, uint index_) public {
        require(element_ >= 0 && element_ <= 9, "Please enter a valid value.");
        numbers[index_] = 0;
    }
    function indexOf(uint element_) public view returns (uint) {
        for (uint i = 0; i < numbers.length; i++) {
            if (numbers[i] == element_) {
                return i;
            }
        }
        revert(0);
    }
}

pragma solidity ^0.8.0;
contract ArrayMutationsB8FC {
    mapping (uint => bytes1) public x;
    mapping (bytes1 => bool) public isA;
    bytes1[] public numbers;
    function setA(bytes1 x_, bytes1[] memory numbers_) public {
        x[x_] = msg.sender;
        isA[numbers_].push(true);
        numbers = numbers_;
    }
    function getA() public view returns (bytes1[] memory) {
        return numbers;
    }
    function count() public view returns (uint) {
        return numbers.length;
    }
    function length() public view returns (uint) {
        return numbers.length;
    }
    function contains(bytes1 x_) public view returns (bool) {
        return x[x_]!= bytes1(0);
    }
    function isEmpty() public view returns (bool) {
        return count( ) == 0;
    }
    function isNotEmpty() public view returns (bool) {
        return count() > 0;
    }
    function at(uint index_) public view returns (
