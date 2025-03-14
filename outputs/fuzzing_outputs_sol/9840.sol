pragma solidity ^0.8.0;
contract Test{
    constructor() public payable{}
    receive() isPayable external payable{}
    fallback() isPayable external payable{
    }
}

pragma solidity ^0.8.0;
contract Test{
    constructor() public payable{}
    receive() payable external {}
    fallback() external {
    }
}
