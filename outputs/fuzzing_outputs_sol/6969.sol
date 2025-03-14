pragma solidity ^0.8.0;
contract Caller {
    Mutator myContract;

    constructor(address _address) public {
        myContract = Mutator(_address);
    }


    function call() public {
        myContract.mutate123();
    }
    function call2() public {
        myContract.mutations();
    }
    function call3() public {
        myContract.read();
    }
    function mutations() public {
        myContract.mutate();
        myContract.mutate();
        myContract.mutate();
        myContract.mutate();
        myContract.mutate();
    }
}
