pragma solidity ^0.8.0;
abstract contract Array {
    function isEmpty(uint16 index)
        public view
        virtual
        returns (bool);
    function get(uint16 index) public view virtual returns (uint);
    function length(uint16 index) public view virtual returns (uint);
    function set(uint16 index, uint value) public virtual;
}
pragma solidity ^0.8.0;
contract ArrayTest is Array {
    uint[] public numbers;
    function isEmpty(uint index) public view virtual override returns (bool) {
        return index >= numbers.length;
    }
    function get(uint index) public view virtual override returns (uint) {
        return numbers[index];
    }
    function length(uint index) public view virtual override returns (uint) {
        return numbers.length;
    }
    function set(uint index, uint value) public virtual {
        numbers[index] = value;
    }
}
pragma solidity ^0.8.0;
contract ArrayTestWithStorage is Array {
    uint16[] public numbers;
    function isEmpty(uint index) public view virtual override returns (bool) {
        return index >= numbers.length;
    }
    function get(uint index) public view virtual override returns (uint) {
        return numbers[index];
    }
    function length(uint index) public view virtual override returns (uint) {
        return numbers.length;
    }
    function set(uint index, uint value) public virtual {
        numbers[index] = value;
    }
}
