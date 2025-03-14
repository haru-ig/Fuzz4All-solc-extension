pragma solidity ^0.8.0;
contract FallbackInterface{
    receive() external payable {}
}






pragma solidity ^0.8.0;
contract Caller{
    struct CallResult {
        uint myData;
        string myString;
    }

    address public contractAddress;

    constructor(address contract_) {
        contractAddress = contract_;
    }

    function myMethod(uint88 contractStorage) public view {
        CallResult memory myCallResult;



        myCallResult.myData = contractStorage;



        myCallResult.myString ='myContractStorageToString';



    }

    function callWithContract() public payable {
        address contractAddress = address(this);


        bytes memory empty = bytes(abi.encodeWithSignature("fallback()"));


        bytes memory myData = abi.encodeWithSignature("myMethod(uint88)", contractAddress);


        string memory myString = abi.decode(contractAddress.call{value: address(this).balance}(myData, "0x21"), (string));
        if (myString!= "myContractStorageToString"){
            revert();
        }
    }
}
