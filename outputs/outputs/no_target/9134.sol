pragma solidity ^0.8.0;
contract mutators_legacy {
    address public wallet;

    mapping(bytes4 => uint256) internal modifiers;
    fallback() public payable {
        uint256 result = msg.value;
        emit emitsEvent();
        modifiers[msg.sig] = 1;
        wallet.transfer(msg.value);
    }
    fallback() public pure {
    }
    function my_callback() public view returns(address){
        return wallet;
    }
}
