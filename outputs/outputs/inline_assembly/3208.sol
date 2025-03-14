pragma solidity ^0.8.0;
contract Contract2 {
  uint internal _value;
  constructor(uint value) {
    _value = value;
  }
  function updateStatus(bool status) public {
      (bool success, bytes memory data) = msg.sender.call{value: _value}("");
      require(status == true, "incorrect status on contract update");
      require(success, "could not update contract status successfully");
    }
}


pragma solidity 0.8.3;
contract Contract3 {
    uint internal _value;
    constructor() {
        _value = 0;






    }
    function updateStatus(bool status) public {

        (bool success, bytes memory data) = msg.sender.call{value: _value}("");
        require(success, "could not update contract status successfully");
        emit StatusUpdated(_value, status);
    }
}
