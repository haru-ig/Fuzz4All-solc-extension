pragma solidity ^0.8.0;
contract ContractMutated {
    uint count = 0;
    function func() public returns (uint) {
        call();
        return count;
    }
    function call() public pure returns (uint){
        count += 1;
        return 1;
    }
}
contract Caller {
    function func() public {

        (bool success, ) = address(newContract).call{value: 1 ether}("");
        require(success, "Contract did not respond");

        (bool success, ) = address(newContract).call{value: 2 ether}("");
        require(success, "Contract did not respond to 2 ether");
    }
}
