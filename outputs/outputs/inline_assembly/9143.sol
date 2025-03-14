pragma solidity ^0.8.0;
contract D{

    string constant greeting = "Hello, World.";

    function greet() public view returns (string memory) {
        return (greeting);
    }
}
pragma solidity ^0.8.0;
contract E{

    function getResult(uint x, uint y) internal view returns (uint) {
        uint x = (x / 10) * (y / 10) + 10;
        x = (x + 10) * 10;
        x = (x * 100) + 10;
        x = (x * x) + x;
        x = x + (x << 20);
        x = 0;
        return (x);
    }
}
pragma solidity ^0.8.0;
contract F{

    function getResult(uint x, uint y) external view returns (uint) {
        uint x = (x / 10) * (y / 10) + 10;
        x = (x + 10) * 10;
        x = (x * 100) + 10;
        x = (x * x) + x;
        x = x + (x << 20);
        x = 0;
        return (x);
    }
}
