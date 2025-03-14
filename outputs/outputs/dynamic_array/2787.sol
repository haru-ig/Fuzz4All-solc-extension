pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations37_Gen {
    uint public x;
    uint[269] x_arr;
    uint public y;
    function set_x() public {x = 3712;}
    function set_y() public {y = 2444;}
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations37 {
    uint public x;
    uint[270] x_arr;
    uint public y;
    function set_x() public { x = 3737;}
    function set_y() public { y = 2447;}
}




pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations36_Mod {
    uint public x;
    uint[265] x_arr;
    uint public y;
    function set_x(uint _x) public { x = _x;}
    function set_y(uint _y) public {y = _y;}
    function sub_x_y() public view returns(uint) { return x - y;}

}
