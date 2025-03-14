pragma solidity ^0.8.0;
contract SemanticEquality_Mutated_7966cd1088667e14b74dc2ef31f4aa55a3012e02
{
    uint256[2] x;
    function g() public {
        x = [uint256(1), uint256(0)];
        x = x[0];
        x[0] = x[1 + 1];
        x = x[1 + 1];
        x = x[1];
        x = x[1];
        x = x[0];
        x = x[0];
        x = x[0];
        x = x[1];
        x = x[0];
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_NotMutated_16888f12d3fe15fc9b06bc710c7e9559d0256a85
{
    function f()
        public view
    {
        uint256[2] memory v;
        uint256 i;

        for (i = 0; i < 10; i++) {
            v = v;
            v[0] = 0;
        }

        for ( ; i < 10; i++)
            v = v;

        for (i = 0; i < 10; i++)
            v = v[0];

        v = v[0];
    }
}
pragma solidity ^0.8.0;
contract SemanticEquality_NotMutated_69a85e4df29b9839142c8db04339fc780899f8da
{
    uint256[2] x;
    function g() public {
        x = [0, 0];
        x = x[1] + x[0];
        x = x[1] + x[0];
        x = x[1] + x[0];
        x = x[1];
        x = x[0] + x[1] + x[0] + x[1];
        x = x[s.min(i, i)];
        x = x
