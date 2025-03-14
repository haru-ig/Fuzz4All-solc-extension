pragma solidity ^0.8.0;
contract Mutator{
    address newReceiver;
    payable public payer;
    constructor(address _payer) {
        payer = _payer;
        newReceiver = payer;
    }
    fallback() external payable {
        emit EventSent{value:msg.value};
        newReceiver.transfer(msg.value);
    }
    receive() external payable {
        emit EventRcvd{value:msg.value};
        newReceiver.transfer(msg.value);
    }
    function callWith(address contractAddress, bytes memory data, uint256 gasLimit) public payable{
        address payable receiver = new(contractAddress);
        receiver.functionTo(gasLimit,contractAddress,data);
    }
}

contract MutatorFallBack is Mutator{
    constructor(address _payer) Mutator(_payer){
    }
    modifier onlyPayer(){
        require(payer == msg.sender, "!payer");
        _;
    }
    function functionTo(uint256 gasLimit,address contractAddress,bytes memory data) internal onlyPayer {
        callWith(contractAddress,data,gasLimit);
        require(gasLeft() >= gasLimit, "Gas doesn't have enough to call the contract.");
        (bool _result, uint256 ) = address(this).delegatecall(abi.encodeWithSignature("functionTo(uint256,address,bytes32)",gasLimit,contractAddress,keccak256(data)));
        bool fail =!(_result||msg.sender == contractAddress);
        assert(fail, "!fail");
    }
}
