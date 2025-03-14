pragma solidity ^0.8.0;
contract Test49Mutator {
    uint public z;
    constructor() public{
        z = 4;
    }
    function inc(uint v) public {
        uint y = z + 1;
        y += v;
        z = y;
    }
    function read2() public view returns(uint) {
        return (a / (a / (a / z) / 2));
    }
    function loop() public {
        while (a + z + 1 >= 4) {
            inc(3);
        }
        return;
    }
    function write2() public view {
        mapping(uint => uint) memory y = [
            {
                z: 3
            },
            {
                z: 4
            }
        ];
    }
}
