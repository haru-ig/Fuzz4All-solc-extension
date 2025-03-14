pragma solidity ^0.8.0;
contract Optimizer {
    uint public constant _var = 2;
    uint public constant _var2 = 1;
    uint public constant _var3 = 3;
    uint public constant _initialised;
    bool public constant _isContractAlive;
    uint public constant _isDead = 2;
    bool public constant _isError = false;
    bool public constant _isSuccess = true;
    bytes4 constant _typeHash;
    uint[] internal _array;
    bytes4 internal constant _typeCode;
    constructor() {
        _initialised = 1;
        _isContractAlive = 1;
        _isError = false;
        _isSuccess = true;





        _array[0] = 17;

        _typeCode = bytes4(keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32""0x")));
    }
    function typeIsAlive() public {
        asm {
            isContractAlive := calldatasciita(0)
            if isContractAlive {

                store(0x00000000000000000000000000000000000000000000000000000000000000000005500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000892903
            }
        }
        _isContractAlive = isContractAlive();
    }






    function checkFunction() public view returns
