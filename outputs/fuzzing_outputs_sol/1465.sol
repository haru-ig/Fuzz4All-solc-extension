pragma solidity ^0.8.0;
contract Program {
    address smartContract;
    event Exception();

    function semanticMutatedExample(address payable _addr) public {
        smartContract = _addr;
        payable(smartContract).transferEther(msg.value);
    }
}
