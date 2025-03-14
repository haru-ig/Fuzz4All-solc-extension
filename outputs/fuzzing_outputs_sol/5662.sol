pragma solidity ^0.8.0;
contract semanticallyequivalent9
{
    contract fptr
    {
        receive() external payable
        {
          fallback();
        }
        function fallback() payable {}
    }
}
