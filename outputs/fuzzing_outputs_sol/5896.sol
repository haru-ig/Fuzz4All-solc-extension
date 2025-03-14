pragma solidity ^0.8.0;
contract Caller {
    address payable self;
    address public contractAddress;

    constructor (address _contract) { contractAddress = _contract; }

    function getCallerAddress() public view returns (address, bool) { return (self.isContract(), self.isContract()); }

    function () public payable {
        if (isContract()) {
            self.transfer(address(this).balance);
        } else {
            self.transfer( msg.value );
        }
    }

    function isContract() internal view returns (bool) {
        (bool isContract, ) = address(this).staticcall(abi.encodeWithSelector(type(IERC165).supportsInterface.selector)));
        return isContract;
    }
}
