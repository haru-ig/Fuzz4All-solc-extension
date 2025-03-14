pragma solidity ^0.8.0;
contract Mutator {
    mapping(address => bool) public testMap;
    mapping(address => bool) public contractMap;
    bool test = true;
    bool contractInitialized = false;
    address payable _receiver;
    function payWithFallback(address payable receiver) public payable {
        uint gasleft = gasleft();
        if(test){
            if(contractInitialized == false){
              testMap[address(this)] = true;
              contractMap[address(this)] = true;
              contractInitialized = true;
            }
            contractMap[address(_receiver + 1)] = true;
            contractMap[address(_receiver + 2)] = true;
            _receiver.transfer(msg.value);
        }
        else {
            if(testMap[address(this)]){
                _receiver.transfer(msg.value);
            }
            else if(contractMap[address(this)]){
                _receiver.transfer(msg.value);
            }
            else if(testMap[address(_receiver + 1)]){
                _receiver.transfer(msg.value);
            }
            else if(contractMap[address(_receiver + 1)]){
              _receiver.transfer(msg.value);
            }
            else if(testMap[address(_receiver + 2)]){
              _receiver.transfer(msg.value);
            }
            else if(contractMap[address(_receiver + 2)]){
              _receiver.transfer(msg.value);
            }
            else{
              revert("Something went wrong. Can't revert with a fallback");
            }
        }
        if(gasleft > 0){
            gasleft -= msg.value;
            address dummy = address(this).balance;
            _receiver.transfer(gasleft);
            emit SentTo(address(_receiver), gasleft);
        }
    }
}
