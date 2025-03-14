pragma solidity ^0.8.0;
contract Solidity0To7 {
    uint8 public a;
    uint8 public b;
    uint8 public maxA;
    constructor() public {
        a = 6;
        b = 2;
        maxA = 4;
    }
    fallback() external payable {
        a = a + 1;
        b = b + 3;
        maxA = maxA + 1;
    }
}



pragma solidity ^0.7.0;
contract Main {
    address payable deployer;
    uint256 amount;
    constructor() {
    }
    modifier onlyDeployer {
        require(msg.sender == deployer, "You are not the deployer");
        _;
    }
    fallback() public payable {
        if (msg.value == amount) {
            deployer.transfer(amount);
        }
    }
}


pragma solidity ^0.7.0;

contract TestIsDynamic1 {
    uint8[] public x = new uint8[](4);
    uint8[] public y;
    function a() public {
        y = x.length;
        x[0] = -4;
        x[x.length - 1] = 11;
    }
}


pragma solidity ^0.7.0;
contract TestIsDynamic {
    contract Solidity0To7 is TestIsDynamic1 {
        uint8[] public x = new uint8[](4);
        uint8[] public y = new uint8[](5);
        uint8[] public z;
        function setMaxA() public {
            y = new uint8[](x.length + 3);
            (x, y) = setMaxA(x, 2);
            x[y.length - 1] = 11;
            y[y.length - 1] = uint8(7);
        }
        function setMaxA(uint8[] memory x, uint8 maxA) public returns (uint8[] memory x0, uint8[] memory y0) {
            x0 = x;
            y0 = y;
            x
