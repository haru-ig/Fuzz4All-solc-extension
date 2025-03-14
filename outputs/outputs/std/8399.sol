pragma solidity ^0.8.0;
address contractOwner = msg.sender;
contract ContractToBeMutatedBis3Is3 {
    uint public arrSize;
    uint public arrX[100];
    uint x1;

    function mutatedFunction1() public {
        uint x2 = 1;
    }

    modifier onlyOwner() {
        assert( msg.sender == contractOwner );
        _;
    }
}
