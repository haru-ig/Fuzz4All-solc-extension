pragma solidity ^0.8.0;

contract Program {


}


pragma solidity ^0.8.0;
contract Test {
    modifier internalCheck(address)
    {
        if(msg.value == 0)
        {

            assembly {
                selfdestruct(CALLER)
            }
        }
        _;
    }

    function test() public internalCheck(msg.sender) {

    }

}

contract Program {
    mapping(address => uint8) public  _check;
    modifier internalCheck(address address)
    {
        if (address!= 0 && address!= 1)
        {
            _check[address]++
            _check[0x00]++
        }
        if(_check[address] > 0)
        {
            assembly {
                mStore(0x00, 0x000000000000000000000000000000001)
            }
        }
        _;
    }
    function test() public internalCheck(0x1) {

    }
}
