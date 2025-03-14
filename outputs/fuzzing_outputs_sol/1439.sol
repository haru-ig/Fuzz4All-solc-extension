pragma solidity ^0.8.0;
contract SendEtherExample0{

    function fallback() public payable{

        uint256 a;

        address payable caller = payable(msg.sender);


        address payable b = address(msg.sender);
        a = 1;

        require(address(this).balance >= 0.000001 ether, "Value too small");
        caller.transfer(a);
    }
}
