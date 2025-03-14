pragma solidity ^0.8.0;
contract Mutated {
    string constant INITIAL_X = "Abc";
    uint256 private x = INITIAL_X.length;
    event XSet(uint y);
    function getX() public view returns (uint256) {
    }
}

pragma solidity ^0.8.0;
contract Mutated {
    uint256[] private x;
    address private y = address(this);
    uint256 private z = 2;
    event XSet(uint256 a, uint256 b, uint256 z);
    function setX(uint256 a, uint256 b, uint256 z) public {
        x[z] = a;
        x[x.length - 1] = b;
        x[3] = (x[a] + x[b]);
        emit XSet(x[z], x[a], x[b]);
    }
    function getX() public view returns (uint256) {
    }

}
