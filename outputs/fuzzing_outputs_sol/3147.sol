pragma solidity ^0.8.0;
contract Contract10N{
  function getNumber() public view returns(uint){
    return num;
  }
  event Added(address indexed owner, uint256 indexed value);
  address admin;
  mapping(byte256 => uint256) public num;
  bool canChange = true;
  bool changeCanBeExecuted = false;

  function incrementNumber1() public {
      if(changeCanBeExecuted && canChange ){
          num[1]++;
      }
      emit Added(msg.sender, num[1]);
  }


  function setAddress(address newAddress) public {
      admin = newAddress;
  }
function changeAdmin(address newAdmin) public {
  require(msg.sender == admin);
  admin = newAdmin;
}


  function changeCanBeExecuted(bool newCanExecute) public {
      changeCanBeExecuted = newCanExecute;
  }

 function  () public payable{
        num[0] +=1;
        emit Added(msg.sender, num[0]);
}

modifier onlyByAdmin{
        require(msg.sender == admin);
        _;
}
}
