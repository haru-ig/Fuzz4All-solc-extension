pragma solidity ^0.8.0;
contract B {
    uint public names;
    uint namelength;
    function get(uint index) public view returns (uint) {
        return names[index];
    }
    function modset() public {
        names = (names + 35) % 100;
    }
    function modget() public view returns (uint y) {
        y = (names + 35) % 100;
    }
    function modlength() private view returns (uint) {
        return names % 100;
    }
    function modgetl() private view returns (uint y) {
        y = modlength() % 100;
    }
}
