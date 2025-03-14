pragma solidity ^0.8.0;

contract modified {
    struct Data {
        uint256 a;
        address b;
    }
    Data memory data;


    function foo() public {
        uint256 i = 0;
        uint256 c = data.a;
        uint256 u = data.b;
    }

    function bar() public {
        uint256 i = 0;
        uint256 c = data.a;
        {
            uint256 u = data.b;
        }
    }

}
