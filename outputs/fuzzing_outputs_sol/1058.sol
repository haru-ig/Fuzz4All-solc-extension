pragma solidity ^0.8.0;
contract ContractFallback {
    constructor() {}
    receive() payable {}
    function fallback() public payable {}
}

pragma solidity ^0.8.0;
interface Interface {
    function receiveData(bytes memory data) public;
    function fallback() public payable;
}


pragma solidity ^0.8.0;
contract Interface {
    struct Data {
        int data;
    }
    mapping(uint256 => Data) public data;
    function retrieveData(uint256 elementIndex) public view returns(int);
    function getDataLength() public view returns(uint256);
    function retrieveDataFallback(uint256 elementIndex) public view returns(uint256);
    receive() payable {}
    function fallback() public payable {
        data[block.number] = Data({data: block.number + 1});
    }
}
