pragma solidity ^0.8.0;
contract C23{
        function c() public {}

        function h1() public {
                address storage tmp;
                require(address(this).delegatecall(new bytes(0)) == address(tmp));
        }

}
