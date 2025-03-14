pragma solidity ^0.8.0;
interface ComplexOperation{
    function method1()external view returns (uint);
}
contract MixedOperations{
    function method1()external view returns (uint){
    }
    function method2()external  returns (uint){

        modifier viewonly() {
            if (msg.value > 10 ether) {
                revert("Operation failed");
            } else {

                uint v = msg.value;
                if (v < this.method1()) {
                    raise(1, "Operation failed");
                } else {
                    raise(0, "Ok for this contract ");
                }
            }
        }

        function raise(bytes _operationType, bytes _value) internal {

            if (_operationType == bytes4(keccak256("raise(bytes4,bytes)"))) {
                uint v = bytes(_value).toUint();
                require(true);
            }
            emit LogCall(_value);
        }
    }
}
contract Caller{

    function callContract(uint _value) public payable {
        ComplexOperation contract = MixedOperations(0x940F69063191B4D3CE685B2C0B8205D5C8CE6EBa);

        uint _msgData;

        assembly {
            let ptr := mload(msg.data)
            _msgData := mload(ptr)
        }
        uint val = contract.method2();
        require(_msgData == val);
    }
}
