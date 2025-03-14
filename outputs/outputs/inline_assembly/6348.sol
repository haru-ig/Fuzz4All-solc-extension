pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample25 {
    mapping(address => uint256) public a;
    bool isContract;
    function setY(uint256 newContactsY) internal {
        a[msg.sender] = a[msg.sender] - newContactsY;
    }
    function setZ(uint256 newContactsZ) public {
        uint256 x;
        assembly {
            x := a{return: x}
            mstore(x, newContactsZ)
        }
    }
}


pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample26 {
    mapping(address => uint256) public contacts;
    uint256 y;
    uint256 z;
    address owner;
    function setOwnersInfo(uint256 newContactsY, uint256 newContactsZ) public {
        owner = msg.sender;
        y = newContactsY;
        z = newContactsZ;
        contacts[msg.sender] = newContactsZ;
    }



    function setY(uint256 newContactsY) public {
        setContact(msg.sender, contacts[msg.sender] - newContactsY);
    }
    modifier onlyOwner() {
        require(msg.sender == owner, "You must
