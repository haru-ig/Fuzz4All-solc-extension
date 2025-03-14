pragma solidity ^0.8.0;
contract Fallback {
    function fallback() public pure {

        revert("Fallback method is missing.");
    }
    function callFromAnotherContract(Fallback fallback) public payable {
        fallback.fallback();
    }
}



pragma solidity ^0.8.0;
contract Fallback {
    address payable contractAddress;
    function newContract(address payable addr) public {
        contractAddress = addr;
    }
    function payFrom(address payable payedAddr, address addr) public {
        contractAddress.send{value: address(this).balance}();
    }
    function callFromAnotherContract(address addr) public payable {
        bytes memory data;
        assembly {
            data := mload(0x1400)
            calldatacopy(data, 0, calldatasize)




            addr.call(add(sub(data, 0x20), 0x10), 0, 0)
        }
    }
}
