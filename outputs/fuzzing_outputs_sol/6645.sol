pragma solidity ^0.8.0;
contract Contract {

    mapping (uint => uint) private contractStorage;


    function () public pure { }


    function caller() public pure { }



    function storeContractStorage(address caller_) public {
        contractStorage[1] = caller_.call.value(0)();
    }
}
contract Mutated {
    function mutated() public view returns (uint16) { return 16; }
}
