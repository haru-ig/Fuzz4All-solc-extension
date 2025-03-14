pragma solidity ^0.8.0;

contract MyInterface {
    function myFunction() public override returns(uint);
}
contract MyContract {
    function setNewValue(uint, uint) public;
    function getData() public view returns(uint);
    function callContract() public payable returns(uint);
    function callContractWithReturn() public payable returns(uint, uint);
    function returnsVoid() payable;
    function noReturn() internal returns(uint);
    function noReturnWithState() internal returns(uint, uint);
    function oneArgumentConstructor(uint) public;
    function twoArgumentConstructor() public {
        emit EmitEvent1(uint256(1), uint256(2));
    }
    function noArguments() public;
    function oneArgumentFunction(uint) public;
    function oneParameterFunction(uint, uint) public;
    function twoParametersFunction(uint, uint) public;
}
