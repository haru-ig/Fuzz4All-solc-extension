pragma solidity ^0.8.0;
contract HighLevelContract {
    function doHighLevelCall(address to) public pure {}
}
contract LowlevelReceivewalletFallback {
    function receive() payable {
        assembly {

            let x := 11
            switch x {
            case 111: {
                let calldata := 0x5555555500000000000000000000000000000000000000000000000000000000
                let amount := 0x000000000000000000000000000000000000000000000000000000000001
                let target := 0x0000000000000000000000000000000000000000000000000000000000000002

                lowlevelcall(calldata, amount, target, 0x0000000000000000000000000000000000000000000000000000000000003)
            }
            default: {
                revert(0)
            }
            }
        }
    }
    function lowlevelcall(bytes memory calldata data) public payable {}
    function lowlevelcall(bytes memory calldata data, uint amount) public payable {
        lowlevelcall(data);
        selfdestruct(msg.sender);
    }
    function lowlevelcall(bytes memory calldata data, uint amount, address to) public payable {
        lowlevelcall(data, amount);
        selfdestruct(to);
    }
    function lowlevelcall(bytes memory calldata data, uint amount, address to, bytes memory data2) public payable {
        lowlevelcall(data, amount, to);
        selfdestruct(data2);
    }
}
contract LowlevelReceiverFallback {
    function lowlevelcall(bytes memory data) public payable {
        lowlevelcall(data, 0, msg.sender);
    }
    function lowlevelcall(bytes memory data, uint amount) public payable {
        lowlevelcall(data, amount, msg.sender);
    }
    function lowlevelcall(bytes memory data, uint amount, address to) public payable {
        lowlevelcallWithDestData(data, amount, to);
    }
    function lowlevelcallWithDestData(bytes memory data, uint amount, address dataDest) internal {
        address(uint160(msg.sender)).transfer(amount);
        selfdestruct
