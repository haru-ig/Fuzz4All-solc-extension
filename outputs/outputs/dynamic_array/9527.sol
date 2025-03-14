pragma solidity ^0.8.0;
contract Main {
    mapping(address => uint) public blackboxMapping;
    mapping(address => bool) public blackboxes;
    contract S1 {
        constructor() public { blackboxes[address(this)] = true; }
    }
    contract S2 is S1 {
        constructor() public { blackboxes[address(this)] = true; }
        function modifyBlackboxes (address blackbox, uint num) public { for (uint i = 0; i < num; i++) {
            blackboxMapping[blackbox] += 1;
        }
        blackboxes[blackbox] = true;
    }
    function modifyFunctionAddresses(address blackbox, address _blackbox) public { blackboxes[_blackbox] = true; }
    function modifyBlackboxes () public {
        S2 s2 = new S2();
        for (uint i = 0; i < 2; i++) {
            s2.modifyBlackboxes();
        }
    }
}
