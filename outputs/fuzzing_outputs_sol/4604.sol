pragma solidity ^0.8.0;
receive () public payable {
    if (msg.value!= 100) throw;
}
