pragma solidity ^0.8.0;
contract Erc223Interface {
contract Erc223 {


    function setApprovalForAll(address _spender, bool _approved) external;

    function getApprovalForAll(address _owner) external view returns (bool);
 }
}

contract Erc223Realis {


    function constructor(address _fromAddress, uint _amount) public {

    }




    function approve(address _spender, bool _allowed) public returns (bool success) {



        return Erc223Interface.Erc223(_spender).setApprovalForAll(_allowed);
    }
}
