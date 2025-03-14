pragma solidity ^0.8.0;
contract Example21 {
    event Log(address _from, address _to);
    fallback () external payable {   }
    modifier example21Payable() { payable self;   }
}

pragma solidity ^0.8.0;
contract Example20 {
    event Log(address _from, address _to);

    function example20() public payable {}
}


contract SimpleContract {



    function fallbackFunction(uint) public {}


    function receive() public payable {}
}
