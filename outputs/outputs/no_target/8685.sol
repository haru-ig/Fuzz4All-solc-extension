pragma solidity ^0.8.0;
address changeAddress = 0xEd0663133b0E087B8E91c782747202BDde5828Df;
contract TestContract
{
    function f() public
    {

        address _changeAddress = 0xEd0663133b0E087B8E91c782747202BDde5828Df;

        f(changeAddress, changeAddress);



        changeAddress.transfer(address(changeAddress).balance + 20);
    }
}
