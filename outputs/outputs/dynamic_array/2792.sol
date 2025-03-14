pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations39 {
    uint public x;
    uint[] x_arr;
    function set_x() public {x = 3685;}
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations40 {
    uint public x;
    uint[0] x_arr;
    function set_x() public {x = 3685;}
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations41 {
    function __SemanticEquality_ArrayMutations41_init() public {x = 3685;}
    uint public x;
    uint[42] x_arr;
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations42 {
    uint public x;
    uint[42] [] x_arr;
    function set_x() public {x = 3685;}
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations43 {
    uint public x;
    uint[1,2,3,4] x_arr;
    function set_x() public {x = 3265;}
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations44 {
    uint public x;
    uint[3,1,2,3,2,4,5,6] x_arr;
    uint[3,1,2,3,2,4,5,6] y_arr;
    function set_x() public {x = 3685;}
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations45 {
    uint public x;
    uint[42] x_arr;
    function get_arr(uint y_arr_index) public returns(uint x_) {
      x_ = x_arr[uint(y_arr_index)-1];
    }
    function set_y() public {x = 3685;}
}<fim_middle>contract Semantic
