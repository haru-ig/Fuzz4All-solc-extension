pragma solidity ^0.8.0;
import "./Mutator.sol";
contract Duplicator is Mutator {
    constructor () {}


    receive() external payable {
        _delegate(_msgSender());
    }


    function _delegate(address other) internal {
        uint256 sentEther = _msg.value;

        require(

            sentEther > amounts[_msgSender()]);


        other.transfer(sentEther);

        _msg.sender.transfer(sentEther);
    }
}

pragma solidity ^0.8.0;
contract TestDynamo {
    constructor (string memory name) {

        uint256 expectedBalance = Dynamo(address(this)).transfer.value(address(Dynamo(address(this))).balance)(50);
        require(expectedBalance == 0);
    }

    function deposit() external payable {
        Dynamo(address(this)).transfer.value(address(this).balance)(30);
        uint256 dutchAmount = Dynamo(address(this)).transfer.value(address(this).balance)(1);
        assert(dutchAmount == 0);

        Dynamo(address(this)).transfer(msg.sender);
        uint256 expectedBalance = Dynamo(address(this)).transfer.value(address(this).balance)(50);
        require(expectedBalance == 0);
    }
}

pragma solidity ^0.8.0;
contract
