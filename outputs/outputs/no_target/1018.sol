pragma solidity ^0.8.0;
contract SemanticMutation17
{
    uint public constant value = 3;
    function modify() constant public pure {}
    function update() public pure returns (uint, uint)
    {
        return (value, 4);
    }
}

pragma solidity ^0.8.0;
contract SemanticMutation18
{
    uint public constant value = 3;
    function modify() public pure {}
    function update() public pure returns (uint, uint)
    {
        return (value, 4);
    }
}

pragma solidity ^0.8.0;
contract SemanticMutation19
{
    uint public constant value = 3;
    function modify() public pure {}
    function update() public pure returns (uint, uint)
    {
        return (value, 4);
    }
    function call_test (uint a) public pure {
        uint x = a + value;
        x + 55555555555555555555555555555555555555555555555555555555555555555555;
    }
}

pragma solidity ^0.8.0;
contract SemanticMutation20
{
    uint public constant value = 3;
    function modify() public pure {}
    uint public modifier inner_modifier() {
        return true;
    }
    function update() public pure returns (uint, uint)
    {
        return (value, 4);
    }
}

pragma solidity ^0.8.0;
contract SemanticMutation21
{
    uint public constant value = 3;
    function modify() public pure {}
    uint public modifier inner_modifier() {
        return true;
    }
    function update() public pure returns (uint, uint)
    {
        return (value, 4);
    }
}

pragma solidity ^0.8.0;
contract SemanticMutation22
{
    uint public constant value = 3;
    modifier modifier_1(){
        state_1 = 1;
        return;
    }
    function create_modifier() public view {
        modifier_view = true;
        _;
    }
    function modify() public pure {
        modifier_modifier = true;
    }
    function update() public pure returns (uint, uint)
    {
        return (value,
