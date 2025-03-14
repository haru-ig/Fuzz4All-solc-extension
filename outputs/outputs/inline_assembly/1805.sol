pragma solidity ^0.8.0;
contract Modified{
    Example exampleInstance;
    address private modifier onlyExampleContract(){
        if (msg.sender==address(exampleInstance))
            _;
        else throw;
    }
    function createExampleInstance() public {
        exampleInstance=new Example();
    }
    function useExampleInstance() public onlyExampleContract {
        exampleInstance.x=2;
    }
    function useModifiedExampleInstance() public onlyExampleContract {
        exampleInstance.x1=222;
        exampleInstance.x2=2222;
        exampleInstance.x3=660000000000000000000000;
    }
}
