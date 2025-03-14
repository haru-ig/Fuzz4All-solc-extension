pragma solidity ^0.8.0;
contract Array is Math {
    uint256 public elements;
    bytes32 public first;
    bytes32 public last = 0;
    bytes32 public buffer;
    function Array(uint num_elements, bytes32 _first, bytes32 _last) public {
        uint n = num_elements;
        require(n >= 0, "Array: negative size");
        if (_first!= 0) {
            require(num_elements > 0, "Array: no bytes copied");
            first = _first;
        }
        if (_last!= 0) {
            last = _last;
            elements += n;
        }
        buffer = new bytes32[](num_elements);
        for (uint i = 0; i < num_elements; i++) {
            buffer[i] = 0;
        }
        while (n!= 0) {
            if (buffer[elements - 1] == 0) {
                buffer[elements - 1] = new bytes32[](elements);
            }
            buffer[elements] = buffer[elements - 1];
            buffer[elements - 1] = new bytes32[](elements + buffer[elements]);
        }
    }
}
