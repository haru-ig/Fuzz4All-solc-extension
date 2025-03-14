pragma solidity ^0.8.0;
contract SemanticMutation2
{
    function semanticMutation2() public {
        uint256[][] memory a = new uint256[1][];
        a[0] = new uint256[](0);
    }
}

contract SemanticMutation3
{
    function semanticMutation3() public pure {
        bytes4 x = uint160(42).toUint32();
    }
}

contract SemanticMutation4
{
    uint256 x
    function semanticMutation4() public pure {
        x = 42;
    }
}

contract SemanticMutation5
{
    mapping(uint256 => bool) m;
    uint256 y
    function semanticMutation5() public pure {
        uint256[] memory a = new uint256[](16);
        m[y] = true;
    }
}

contract SemanticMutation6
{
    mapping(uint256 => bool) m;
    uint256[] memory a
    function semanticMutation6() public pure {
        m[a[0]] = true;
    }
}

contract SemanticMutation7
{
    mapping(uint256 => bool) m;
    uint256 x
    function semanticMutation7() public pure {
        m[x] = true;
    }
}

contract SemanticMutation8
{
    event semanticMutation8(uint256 a)
    function semanticMutation8(uint256 a) public {
        emit semanticMutation8(a);
    }
}
