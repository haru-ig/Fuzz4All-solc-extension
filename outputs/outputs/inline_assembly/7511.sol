pragma solidity ^0.8.0;
contract ExampleTwo {
    uint x = 4;
    uint y;

    uint z;

    uint w;

    uint internal z2;

    uint internal w2;

    function getX() public view returns (uint) {
        return x;
    }
    function getZ() public view returns (uint) {
        return z;
    }
    function getY() public view returns (uint) {
        return y;
    }
    function getS() public {
        require (z!= z2 && w!= w2);
        revert("Something else screwed up");
    }
    function updateValues() external {
        z = z2 + 3;
        w = w2 + 5 - 1;
    }
}
