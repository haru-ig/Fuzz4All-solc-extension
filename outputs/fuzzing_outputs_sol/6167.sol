pragma solidity ^0.8.0;

contract MyEther {
    constructor() public {
    }
    receive() external payable {
    }
    function test(address _newContract) public {
        MyEther newContract = MyEther(_newContract);
    }
}
pragma solidity ^0.8.0;
import "./MyEther.sol";
contract Caller {
    address public owner;
    address payable ownerEther;
    MyEther myEther;

    constructor(address _owner, address payable _ownerEther, address payable _payableEther) public {
        owner = _owner;
        ownerEther = _ownerEther;
        ownerEther.transfer(1 ether);
        if (!_payableEther.send(1 ether)) {
            ownerEther.transfer(1 ether);
        }
        myEther = MyEther(address(0));
    }

    function test(address _newContract) public {
        MyEther newContract = MyEther(_newContract);
        newContract.test(address(myEther));
    }
}
