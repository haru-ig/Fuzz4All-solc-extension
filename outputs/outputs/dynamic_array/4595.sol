pragma solidity ^0.8.0;
import "./MyData.sol";
contract Dessert {
   address payable _receiver;
    mapping (uint => address payable) _receivers;
    mapping (address => uint[]) public users;
    mapping (address => address[]) _addresses;
    mydata _data;
    MyData my = MyData();
    void setDestination(address payable _receiver) public {
        _receiver = _receiver;
    }
    function makeTheMessage() public {
        _receivers[0] = _receiver;
        emit newMessage(_receivers[0]);
    }
    function send(address payable _receiver, uint _id) public {
        assert(users[msg.sender][_id] == 0);
        emit newMessage(_id);
        users[msg.sender][_id] = 1;
        _receivers[_id] = _receiver;
        assert(address(this).balance >= _id + 1);
    }
    function callme(uint _id) public {
        _receivers[_id] = tx.origin;
        users[msg.sender][_id] = 2;
        emit callMessage(_id);
    }
    function emitCallMessage(uint _id, uint _data) public {
        emit callMessage(_id, _data);
    }
    function emitNewMessage(uint _id) public {
        emit newMessage(_id);
    }

    function getCallDataSize(uint _id) public pure returns(uint) {
        return 0;
    }
    function getCallDataSize() public pure returns(uint) {
        return 0;
    }
    function getCallData() public view returns(bytes memory) {
        return new bytes(0);
    }

    function getUserForAddress(address _sender) public view returns(uint[] memory, uint) {
        return(users[_sender], idForAddress(_sender));
    }
    function getAllAddresses(uint _id) public view returns(address[] memory, uint) {
        return(_addresses[msg.sender][_id], _id);
    }
    function idForAddress(address _address) public view returns(uint) {
        uint[] memory addressUsers = users[_address];
        for (uint i = 0; i < addressUsers.length; i++) {
          if (addressUsers[i] == 1) {
            return(i);
          }
        }
        return(addressUsers.length);
    }

   event newMessage(address sender);
   event callMessage(uint id, uint data);
    MyData my = MyData();
}
