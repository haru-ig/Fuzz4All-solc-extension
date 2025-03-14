pragma solidity ^0.8.0;
import "Array.sol";
contract Modify {
    Array array;
    constructor(uint initialNum) {
        array = Array(initialNum);
    }
    function modify() public {
         uint count = array.find(6);

        uint64 array[10] = [ 1, 2, 3, 2, 5, 6 ];
        if (array.contains(count)) {
            array.delete(count);
        }
    }
}

pragma solidity ^0.8.0;
library MyMath {
    function sqr(uint64 a) public pure returns(uint64) {
    }
}
