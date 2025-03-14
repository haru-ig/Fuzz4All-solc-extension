pragma solidity ^0.8.0;
interface Address {
    function sendValue(uint256 value) external returns (bool);
    function functionCall(address target, bytes memory data) external returns (bytes memory);
    function functionCallWithValue(address target, bytes memory data, uint256 value) external returns (bytes memory);
    function functionReturn(bytes memory data) external returns (bytes memory);
    function isContract(address account) external view returns (bool);
}
contract Computation
{
    uint public constant A = 10;
    uint public constant B = 2;
    bool public constant isContra = false;
    uint public constant B1 = 2;
    uint public constant B2 = 2;
    address payable contra;
    constructor() public {

        contra = payable(0xFDDFEEE1EE727397c763F4A03314f3d3115c7D28);
    }
    function multiply() public {

        contra.sendValue(contra.call{value: contra.balance / B1}());
    }
    function setA(uint x) public {
        A = x;
    }
    function getA() view public returns (uint){
        return A;
    }
    function setB(uint x) public {
        B = x;
    }
    function getB() view public returns (uint) {
        return B;
    }
}
