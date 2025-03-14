pragma solidity ^0.8.0;
contract Withdraw {
    function withdrawEther(uint _amt) public {
        require(_amt > 0);
        address(this).balance.transfer(_amt);
    }
}



pragma solidity ^0.8.0;
contract Call {
    address payable to;

    constructor(address payable _to) public {
        to = _to;
    }

    function call(address _contract, address _func, uint _amt) public {
        _contract.call.value(_amt)("");
        (bool success, bytes memory data) = _contract.call.value(0)("");
        if(!success || (data.length == 0))
            to.transfer(_amt);
    }
}

contract TransferEther {
    function transferEther(uint _amt) external payable {

    }
}
