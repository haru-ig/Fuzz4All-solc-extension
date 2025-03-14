pragma solidity ^0.8.0;
contract MutatedDynamicArrays7 {
    uint256 x = 10;
    function modify(uint256 _y) public constant {
        x = _y;
        delete x;
    }
}


pragma solidity ^0.8.0;
contract MutatedDynamicArrays8 {
    uint256 x = 10;
    function modify(uint256 _y) public {
        x = _y;
        x[0] = 1;
    }
}
