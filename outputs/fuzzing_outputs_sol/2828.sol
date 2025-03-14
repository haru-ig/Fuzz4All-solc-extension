pragma solidity ^0.8.0;
interface Receiver {
    function accept() external returns (bool);
}

pragma solidity ^0.8.0;
contract Test02 {
    function accept() public view returns (bool) {}
    constructor(address _000, address _001, address _002) payable public {}
    contract Caller is Caller2, Receiver {
        constructor(address _000, address _001, address _002) Caller2(_000, _001, _002) public {}
        receive() public payable external {}
    }
}
