pragma solidity ^0.8.0;
contract Mutator is Caller {
    Receive get;
    constructor() {
        bytes memory _get_data = abi.encodeWithSignature('get()');
        assembly {
        let ptr := mload(0x40)
        mstore(ptr,0x604052600436106040526000396000f3fe6080604052341561001b57600080fd5b341561001757600080fd5b5061002c6000396000f3fe60806040526004357c0100000000000000000000000000000000000000000fed13505050605460a060020a03191681526020019150506040518082815260200160405180910390f35b600080838863278c926c17398d4f1072c748b1015be5ad7378a6277f9a90ee465ba51ba38a675b7189ac22033ef2b81d216c822680b7c463241258082fc7b5c000000000000 };
        get.setFallback(address(this), _get_data);
    }
    receive() external payable {}
    receive() external pure {}
}

pragma solidity ^0.8.0;
contract MutatorCaller is Caller {
    uint internal counter;
    bytes memory get_call;
    constructor(uint num_) {
        counter = num_;
        bytes memory _get_data = abi.encodeWithSignature('get()');
        get_call = _get_data;
    }
    receive() external payable {
        if (msg.data.length >= 8) {
            counter = bytes32(abi.decode(msg.data, (bytes)));
            counter++;
        } else {
            counter = 0;
            msg.data = msg.data.add(get_call);
        }
    }
    receive() external pure {
        if (counter == 0) {
            counter = 1;
        } else {
            counter = 0;
