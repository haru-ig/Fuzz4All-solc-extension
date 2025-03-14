pragma solidity ^0.8.0;
contract Contract22Mut2{
    event Fulfilled(address owner, uint256 indexed value);

    function functionCall(address callee, uint256 value) public {
        callee.call{value: value}(new bytes(0));
    }

    uint256 public value;
    function myfunction() public payable{
        (,value) = call(address(this));
        functionCall(address(this), 0);
        function(address,uint256) = receive();
    }
    receive() external payable payable payable payable payable payable payable{
        uint256 tmp;
        (tmp,_)= payable(this).call{value: 0}(new bytes(0));
    }
}
