pragma solidity ^0.8.0;
contract MutatedExample {
    address owner = msg.sender;
    address other = msg.sender;
    bool hasEther = true;
    event HadEther(bool newValue);
    modifier HasEther {
        (hasEther, ) = (msg.value <= address(this).balance, );
        require(hasEther, );
        _;
    }
    constructor (uint _amount) public {

        owner.send(_amount);
        other.send(_amount);
    }
    receive ()
            payable
            HasEther
    {
        owner.send(msg.value);
        other.send(msg.value);
        hasEther = false;
        HadEther(hasEther);
    }
    function balanceOf() public view returns (uint) {
        return (address(this).balance);
    }
}
contract Test {
    function test() public pure {


        require(false);
    }
}
