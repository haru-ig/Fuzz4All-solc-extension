pragma solidity ^0.8.0;
contract Modul{
        uint s;
        modifier onlyInModule(){
            Modul _Module = Modul(msg.sender);
            assembly { _calldatacopy(0, 0, _Module.internal.codesize()) }
            onlyInModule_calldatacopy(0, 0, _Module.internal.codesize())
        }
        func modifiyInModule() external{
            onlyInModule();
            s = s + 1;
        }
        constructor(){
            s = 5;
            s = s + 3;
        }
        fallback() external {
            s = s + 2;
        }
}
