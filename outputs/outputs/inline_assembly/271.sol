pragma solidity ^0.8.0;
contract E9
{
    uint _x;
    function subtract (int _y) public returns (uint256) {
        _x = _x ^  (~ (-3));
        return subtract_internal1_0(1);
    }
    function subtract_internal1_0 (uint _x) internal returns (uint256) {
        return 9;
    }
}

pragma solidity ^0.8.0;
contract E10
{
    bytes32 a;

    constructor() public
    {
        a = keccak256("hello") ^  keccak256(bytes(keccak256("world")));
        (a, uint) = div(a, uint(keccak256(bytes(keccak256(uint16(1))))) & uint(keccak256(bytes("xyz")))) ^ uint(keccak256(bytes(keccak256("hello"))))) ^
            uint(keccak256(bytes(keccak256("world"))));
    }
}
contract ICall
{
    function set_x(uint _x) external;
    function set_y(uint _y) external;
    function run() external;
    function set_sum(uint _sum) external;
}
contract IState
{
    function set_x(uint _x) public;
    function get_x() public view returns (uint);
    function set_y(uint _y) public;
    function get_y() public view returns (uint);
    function set_sum(uint _sum) public;
}
contract IStateCall is ICall, IState
{
}
contract IStatic
{
    function get_x() public view returns (uint);
}
contract IStaticCall is ICall, IStatic
{
}
contract SimpleStateCall is IStateCall
{
}
contract SimpleStaticCALL is IStaticCall
{
}
contract Call {



    IStateCall public stateCall1;


    IStaticCall public staticCall1;

    bool public passed;
