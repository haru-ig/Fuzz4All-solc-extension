pragma solidity ^0.8.0;
contract Mutator3 {
    mapping (uint => uint) _storedData;
    constructor() {
        for (uint i = 0; i < 2; i++) {
            _storedData[i] = 2 ** 256;
        }
    }

    function payWithFallback(address payable _contract) public payable {
        if (_contract.balance!= address(this).balance) {
            revert("Contract got a smaller balance than it should.");
        }
        _storedData[msg.value] = 42;
        if (_storedData[2 + (uint(uint(1000000) * 2)).sub(1)]!= 42) {
            revert("Stored value of msg.value did not match the expected value.");
        }
    }

}
contract Reverter3 {
    constructor () {


        revert("Wrong fallback executed.");
    }
}


pragma solidity ^0.8.0;
contract Mutator4 {
    constructor () {


        revert();
    }
}
contract Reverter4 {
    constructor () {
        if (address(0)!= address(this)) {
            revert();
        }
        if (address(0x900F429a0B31e6575a09aE9C4596e90296a24562)!= address(this)) {

            revert();
        }
        if ($someData!= 0) {
            revert("Reverted with some other data that should not be part of the contract's return data.");
        }
    }
}
