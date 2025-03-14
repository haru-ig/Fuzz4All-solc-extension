pragma solidity ^0.8.0;
contract Test28
{
    dynamic public array;
    function () public {
    }
    function g() public {
        array[0] = 3;
        array.pop();
    }
    function h() public {
        array.push(1);
    }
}
