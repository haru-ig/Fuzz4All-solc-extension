pragma solidity ^0.8.0;
contract CoC{
    function g1(uint a) private {
        uint b = a / (uint) 2;
        uint a0 = a;
    }
}



pragma solidity ^0.8.0;
contract CoC{

    string contractName;

    address to;

    address[] public senders;

    uint256 public amount;

    address initiator;

    constructor(address _to, uint _amount, address _initiator) {
        contractName = "Simple Contract using Solidity";
        amount = _amount;
        initiator = _initiator;
        to = _to;
        senders.push(msg.sender);
    }

    modifier send() {

        require(msg.sender() == to);


        uint sum = totalSupply();
        require(sum + amount >= sum);


        if (msg.sender()!= address(0)) {
            msg.sender().transfer(amount);
        }


        _;
    }
}


pragma solidity ^0.8.0;
contract CoC{
    uint x = 3;
}
