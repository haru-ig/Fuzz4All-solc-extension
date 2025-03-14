pragma solidity ^0.8.0;
contract ModifiedDynamicArrays6 {
    uint256 mutable x = 0;
    function modify(uint256 _y) public {
        x = x - _y;
    }
}

pragma solidity ^0.8.0;
contract NonMutatedDynamicArrays7 {
    uint256 x = 10;
    function modify(uint256 _y) public {
        uint256 _z = 0;
        x = x - _y;
    }
}

pragma solidity ^0.8.0;
contract MutatedNonMutatedDynamicArrays8 {
    uint256 x = 10;
    function modify(uint256 _y) public {
        uint256 _z = 0;
        uint256 _y_y = _y-1;
        x = x - _y;
        while(true){
            if(_y_y == 1){
                break;
            }
        }
    }
}
