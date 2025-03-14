pragma solidity ^0.8.0;
contract SimpleExample6 {
    function doSomething(bytes memory) public {
        bool result=false;
        if(!result) {
            do {
            } while(!result);
            unchecked{ revert('Check'); }
            return;
        }
    }
    function callThis(address addr, bytes memory data) public {
        bool result=bool(address(this).call{value:this.balance}(data));
        if(!result){
            uint8 i = 0;
            unchecked{
                bytes1 b1 = bytes1(0x62);
                bytes2 b2 = bytes2(b1);
                bytes3 b3 = bytes3(b2);
                bytes4 b4 = bytes4(b3);
                bytes5 b5 = bytes5(b4);
                bytes6 b6 = bytes6(b5);
                bytes7 b7 = bytes7(b6);
                bytes8 b8 = bytes8(b7);
                i = int8(uint8(b8));
            }
        }
    }
 }
