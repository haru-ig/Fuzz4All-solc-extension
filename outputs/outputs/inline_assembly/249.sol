pragma solidity ^0.8.0;
contract E2
{
    function subtract (uint _y) public returns (uint){
        return 1;
    }
}
pragma solidity ^0.8.0;
contract E1
{
    function subtract (uint _y) public returns (uint){
        return (1u - 2);
    }
}
pragma solidity ^0.8.0;
contract E0
{
    function subtract (uint _y) public returns (uint){
        return 0;
    }
}
pragma solidity ^0.8.0;
contract E0
{
    function subtract (uint _y) public returns (uint){
        return -(1u);
    }
}
pragma solidity ^0.8.0;
contract E0
{
    function subtract (uint _y) public returns (uint){
        return 0u;
    }
}
