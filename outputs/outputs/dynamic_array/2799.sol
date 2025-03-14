pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations40 {
    uint public x;
    uint[102] x_arr = [ 15, 20, 4, 9, 161, 3, 5, 21, 6, 11, 1, 0, 7 ];

    function x_mut() public {
        uint y = x_arr[1];
        x_arr[1] = y + 1;
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations41 {
    uint public x;
    uint[1024] x_arr;
    uint[1024] private x_arr_private;

    function x_mut() public {
        x_arr[8] = 5;

        x_arr_private[1234567] = 1;
    }
}
