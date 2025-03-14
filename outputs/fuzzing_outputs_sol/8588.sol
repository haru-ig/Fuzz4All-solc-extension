pragma solidity ^0.8.0;
contract CallerExample23 {
    address public owner;
    function CallerExample23(address _owner) public {
        owner = _owner;
    }
    function call_caller () public view returns (address) {
        return owner;
    }
    function fallback() public payable {
        emit Log(address(this).balance);
    }
    receive() external payable {
        emit Log(address(this).balance);
    }
    event Log(uint balance);
}

pragma solidity ^0.8.0;
contract CallerExample24 {
    address owner;
    uint contractBalance;
    function CallerExample24(address _owner) public {
        owner = _owner;
    }
    function call_owner() public view returns (address){
        return owner;
    }
    function call_caller() public view returns (address){
        return address(this);
    }
    function call_caller_with_balance_at(uint x) public view returns (uint){
        return contractBalance + x;
    }
    function fallback() public payable {
        emit Log(address(this).balance);
        contractBalance += msg.value;
    }
    receive() external payable {
        emit Log(address(this).balance);
    }
    event Log(uint balance);
}
