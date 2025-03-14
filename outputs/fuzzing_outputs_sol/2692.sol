pragma solidity ^0.8.0;
contract Fallback
{


    fallback function f(bytes memory a) internal payable {

        emit Emitted();
    }
    receive
    function () payable external {

        emit Emitted();
    }
    event Emitted();
}
