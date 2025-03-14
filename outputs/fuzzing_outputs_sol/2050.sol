pragma solidity ^0.8.0;
contract Mutater {
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
    function updateBalance() public {
        address(this).balance;
    }
    function getOldBalance() public view returns (uint256) {
        return address(_oldContract).balance;
    }
    function updateOldContract() public {
        address _oldContract = this;
        assembly {

            _oldContract.balance;
        }
    }
    function setOldContract(address _oldContract) public {
        address(this).balance;
        uint256 oldBalance = address(_oldContract).balance;
        assembly {

            _oldContract.balance;
            nop();
        }
    }
    address _oldContract;
}
