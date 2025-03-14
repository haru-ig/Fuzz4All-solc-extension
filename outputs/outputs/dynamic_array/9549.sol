pragma solidity ^0.8.0;
contract Main3 {
    struct Element { uint value; }
    mapping(address => Element[]) public blackboxArray;
    constructor () { blackboxArray[msg.sender][0] = new Element[](13);
    }
    function modifyBlackboxes (Element[] memory array, uint offset, uint num) public {
        for (uint i = 0; i < num; i++) {
            array[array.length - i - offset].value += 1;
        }
    }
}
contract Main {
    function() external {}
    public function test() public {
    }
}
