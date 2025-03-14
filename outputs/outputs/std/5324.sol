pragma solidity ^0.8.0;
contract ArrayExample {
    uint[] array;
    function test(uint element) public {
        uint length = length;
        uint elem;
        uint pos = length;
        while ((elem = array[--pos])!= 0) {
            emit Emitted(array[0], elem);
        }
        emit Emitted(element, element);
        length;
    }
    function emit() public {
        emit Emitted();
    }
    event Emitted(uint x, uint y);
}
