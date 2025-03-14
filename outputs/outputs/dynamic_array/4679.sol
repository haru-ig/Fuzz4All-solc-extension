pragma solidity ^0.8.0;

contract Storage2 {

    StateMutated2 storage state;

    state.quantity = 0;

    function pay (uint quantity) public {
        state.quantity += quantity;
    }

    function modify() public {
        state.quantity = 0;
    }

    function () public {
        state.quantity += msg.value;
    }

    function getName() public view returns (bytes32 name) {
        bytes32[] memory data = name_;
        name = data[0];
    }

    address payable[] name_;

    function init(bytes32[] memory name) public {
        name_ = name;
    }
}













pragma solidity ^0.8.0;
#pragma experimental ABIEncoderV2;
contract Storage2 {

    StateMutated2 state;

    function setQuantity(uint quantity) public {
        uint oldQuantity = state.quantity;
        uint newQuantity = state.quantity + quantity;


        if (state.quantity == 0) {
            require(quantity > 0, "Quantity exceeds 0");
            emit Purchased(oldQuantity, newQuantity);
        } else {
            if (oldQuantity >= quantity){
                state.quantity += quantity;
            }
        }
    }

    function () public payable {
        require(msg.value > 0, "Must pay");
        setQuantity(msg.value);
    }

    function getName() public view returns (string memory) {
        return (name_(0));
    }

    string[] public name_;

    function initName(string[] memory a_name) public {
        name_ = a_name;
    }

    event Purchased(uint _oldQuantity, uint _newQuantity);
}
